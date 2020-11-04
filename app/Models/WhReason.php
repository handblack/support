<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhReason extends Model
{
    /*
    IN => ingreso
    SA => Salida 
    TR => Traslado
    PR => Produccion
    ME => Merma
    */
    use HasFactory;
    protected $table = 'wh_reasons';
    protected $fillable = [
        'reasonname',
        'movetype',
        'isactive'
    ];

}
