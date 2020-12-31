<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhPaymentMethod extends Model
{
    use HasFactory;
    protected $fillable = [
        'pmname',
        'pmcode'
    ];
}
