<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhTempPayment extends Model
{
    use HasFactory;
    protected $fillable = [
        'movetype',
        'currency_id',
        'payment_method_id',
        'card_id',
        'card_number',
        'bankacccount_id',
        'documentope',
        'return_id',
        'cuponno',
        'amount',
    ];

}
