<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhSequencer extends Model
{
    use HasFactory;
    protected $fillable = [
        'sequencername',
        'doctype_id',
        'codsunat',
        'serial',
        'lastnumber',
        'isfex',
        'isactive',
        'created_by',
        'updated_by',
    ];
    /*
    protected $visible  = [
        'id', 
        'sequencername'
    ];
    */
}
