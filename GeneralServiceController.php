<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GeneralServiceController extends Controller
{

    public function index()
    {
        return view('lead-import');
    }

    // ------------- [ Import Leads ] ----------------
    public function importLeads(Request $request)
    {

        $lead_id = "";

        $first_name = "";
        $last_name = "";

        //  file validation
        $request->validate([
            "file" => "required",
        ]);

        $file = $request->file("file");
        $csvData = file_get_contents($file);

        $rows = array_map("str_getcsv", explode("\n", $csvData));

        $header = array_shift($rows);

        foreach ($rows as $row) {

            if (isset($row[0])) {

                if ($row[0] != "") {

                    $row = array_combine($header, $row);

                    $full_name = $row["full_name"];
                    $full_name_array = explode(" ", $full_name);

                    $first_name = $full_name_array[0];

                    if (isset($full_name_array[1])) {
                        $last_name = $full_name_array[1];
                    }

                    // master lead data
                    $leadData = array(
                        "first_name" => $first_name,
                        "last_name" => $last_name,
                        "full_name" => $row["full_name"],

                        "email" => $row["email"],
                        "phone" => str_replace("'", "", $row["phone_no"]),
                        "alternate_phone" => $row["alternate_phone_no"],

                        "lead_title" => ucwords($row["lead_type"]) . " For ",
                        "requirements" => $row["requirements"],
                        "lead_type" => $row["lead_type"],

                        "property_part" => $row["property_part"],
                        "location" => $row["location"],
                        "address" => $row["address"],

                        "project_locality" => $row["project_locality"],
                        "budget" => $row["budget"],
                        "area" => $row["area"],
                        "area_unit" => "Sq-ft",
                    );

                    $lead_title = ucwords($row["lead_type"]) . " For ";
                    $slug = app(\App\Http\Controllers\HelperController::class)->slugGenerator($lead_title);
                    $shortLinkslug = app(\App\Http\Controllers\HelperController::class)->generateShortUrl();
                    $slug = $slug . "-" . $shortLinkslug;

                    // ----------- check if lead already exists
                    $checkLead        =       DB::table("leads")
                                             ->where("email", "=", $row["email"])
                                             ->first();

                    if (!is_null($checkLead)) {
                        $updateLead   =       DB::table("leads")->where("email", "=", $row["email"])
                                             ->update($leadData);

                        $data["status"]     =   "failed";
                        $data["message"]    =   "Lead updated successfully";
                    }

                    else {
                        $lead_id = DB::table("leads")->insertGetId(array_unique($leadData));

                        $leadMeta = array(
                            "lead_id" => $lead_id,
                            // "floor_plans"           =>      "",
                            // "kitchen"               =>      "",
                            // "wardrobe"              =>      "",
                            // "tv_units"              =>      "",
                            // "false_ceiling"         =>      "",
                            // "paint_pop"             =>      "",
                            // "furnishing_painting"   =>      "",
                            // "other_details"         =>      "",
                            // "start_time"            =>      "",
                            // "possession_status"     =>      "",
                            // "possession_date"       =>      ""
                        );

                        $saveMeta = DB::table("lead_meta_new")->insert($leadMeta);

                            // generate short url of leads
                        $shortLink = app(\App\Http\Controllers\HelperController::class)->generateShortUrl();

                        $shortLinkData = array(
                            "lead_id" => $lead_id,
                            "link" => $slug,
                            "short_link" => $shortLink,
                        );
                        $saveShortLink = DB::table("lead_short_link")->insert($shortLinkData);
                        $data["status"] = "success";
                        $data["message"] = "Leads imported successfully";
                    }
                }
            }
        }

        if ($lead_id > 0) {
            return back()->with("success", "Leads imported successfully");
        } elseif($updateLead == 0 || $updateLead == 1) {
            return back()->with("failed", "Leads updated successfully");
        }
        else {
            return back()->with("failed", "Some error encountered");
        }
    }
}
