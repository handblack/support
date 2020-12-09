<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PosController extends Controller{
    public function pos_run(){
        return view('pos.pos_main');         
    }
}
