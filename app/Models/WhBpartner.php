<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhBpartner extends Model
{
    use HasFactory;
    protected $fillable = [
        'bpartnername',
        'bpartnercode',
        'bpartnertype',
        'documentno',
        'isactive'
    ];
}
