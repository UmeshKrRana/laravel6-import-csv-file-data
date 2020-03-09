<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    protected $fillable = [
            "first_name",
            "last_name", 
            "full_name", 
            "email", 
            "phone", 
            "alternate_phone", 
            "address", 
            "city", 
            "requirement"
        ];
}
