<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhPosConfig extends Model
{
    use HasFactory;
    protected $fillable = [
        'posname',
        'warehouse_id', 
        'sequencer_id',
        'ismovestock',
        'iscreateproduct',
        'iscreatebpartner',
        'isactive'
    ];
    public function warehouse(){
        //return $this->hasOne('App\Models\WhWarehouse', 'id');
        return $this->hasOne(WhWarehouse::class,'id','warehouse_id');
    }
    public function sequencer(){
        //return $this->hasOne('App\Models\WhSequencer','id')->select(['id', 'sequencername']);
        return $this->hasOne(WhSequencer::class,'id','sequencer_id');
    }
}
