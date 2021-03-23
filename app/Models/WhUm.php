<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhUm extends Model
{
    use HasFactory;
    protected $table = 'wh_ums';
    protected $fillable = [
        'umname',
        'isoname',
        'isactive'
    ];
}
