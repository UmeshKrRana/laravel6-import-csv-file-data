<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Lead;

class LeadController extends Controller
{
    public function index() {
        return view('import');
    }


    // ------------- [ Import Leads ] ----------------
    public function importLeads(Request $request) {
        $data           =       array();

        $lead_id = "";

        $first_name = "";
        $last_name = "";

        //  file validation
        $request->validate([
            "csv_file" => "required",
        ]);

        $file = $request->file("csv_file");
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
                        "address" => $row["address"],
                        "city" => $row["city"],
                        "requirement" => $row["requirements"],
                    );

                    // ----------- check if lead already exists ----------------
                    $checkLead        =       Lead::where("email", "=", $row["email"])->first();

                    if (!is_null($checkLead)) {
                        $updateLead   =       Lead::where("email", "=", $row["email"])->update($leadData);
                        if($updateLead == true) {
                            $data["status"]     =       "failed";
                            $data["message"]    =       "Leads updated successfully";
                        }
                    }

                    else {
                        $lead = Lead::create($leadData);
                        if(!is_null($lead)) {
                            $data["status"]     =       "success";
                            $data["message"]    =       "Leads imported successfully";
                        }                        
                    }
                }
            }
        }

        return back()->with($data["status"], $data["message"]);
    }
}
