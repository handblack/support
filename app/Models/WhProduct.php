<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhProduct extends Model
{
    use HasFactory;
    protected $fillable = [
        'sku',
        'productcode',
        'productname',
        'shortname',
        'line_id',
        'subline_id',
        'family_id',
        'um_id',
        'stk_min',
        'stk_max',
        'isactive',
        'created_by',
        'updated_by',
    ];
    /* Vinculamos la relacion */
    public function line(){
        return $this->hasOne('App\Models\WhLine', 'id');        
    }

    public function subline(){
        return $this->hasOne('App\Models\WhSubLine', 'id');
    }

    public function family(){
        return $this->hasOne('App\Models\WhFamily', 'id');
    }
}
