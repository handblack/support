<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use App\Models\WhPaymentMethod;
use Illuminate\Http\Request;

class PosController extends Controller{
    public function pos_run(){
        session(['pos_token' => md5(date("Ymdhis"))]);
        $medio_pago = WhPaymentMethod::all();
        return view('pos.pos_main',[
            'medio_pago' => $medio_pago
        ]);         
    }
}
