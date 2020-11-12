<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhTemp extends Model
{
    use HasFactory;
    protected $table = 'wh_temp';
    protected $fillable = [
        'token',
        'bpartner_id',
        'reason_id',
        'warehouse_id',
        'datetrx_id',
        'product_id',
        'um_id',
        'productname',
        'productcode',
        'umname',
        'qty',
        'price',
        'pack'
    ];
    
}
