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
        'currency_id', 
        'sequencer_fac_id',
        'sequencer_bve_id',
        'sequencer_ndb_id',
        'sequencer_ncr_id',
        'sequencer_who_id',
        'ismovestock',
        'iscreateproduct',
        'iscreatebpartner',
        'isactive'
    ];
    public function warehouse(){
        return $this->hasOne(WhWarehouse::class,'id','warehouse_id');
    }
    public function currency(){
        return $this->hasOne(WhCurrency::class,'id','currency_id');
    }
    public function sequencer(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_id');
    }
    public function fac(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_fac_id');
    }
    public function bve(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_bve_id');
    }
    public function ndb(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_ndb_id');
    }
    public function ncr(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_ncr_id');
    }
    public function who(){
        return $this->hasOne(WhSequencer::class,'id','sequencer_who_id');
    }
}
