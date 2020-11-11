<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhBankReceived extends Model
{
    use HasFactory;
    protected $table = 'wh_bank_received';
    protected $fillable = [
        'datetrx',
        'bpartner_id',
        'bank_id',
        'currency_id',
        'exchange',
        'doctype',
        'documentno',
        'office',
        'observation',
        'amount'
    ];
}
