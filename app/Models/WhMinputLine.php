<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhMinputLine extends Model
{
    use HasFactory;
    protected $fillable = [
        'minput_id',
        'product_id', 
        'qty',
        'price',
        'pack',
        'grandline'
    ];
}
