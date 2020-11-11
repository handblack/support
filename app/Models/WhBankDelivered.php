<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhBankDelivered extends Model
{
    use HasFactory;
    protected $table = 'wh_bank_delivered';
    protected $fillable = [
        'bpartner_id',
        'amount'
    ];
}
