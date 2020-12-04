<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhSequencer extends Model
{
    use HasFactory;
    protected $fillable = [
        'sequencername',
        'serial',
        'isfex',
        'isactive',
        'created_by',
        'updated_by',
    ];
}
