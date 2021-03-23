<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhWarehouse extends Model
{
    use HasFactory;
    protected $table = 'wh_warehouses';
    protected $fillable = [
        'warehousename',
        'warehousecode',
        'ubigeo',
        'isactive'
    ];
}
