<?php

namespace App\Http\Controllers\move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhWarehouse;
use App\Models\WhStock;

class QueryController extends Controller
{
    public function query_stock(){
        return view('move.query_stock');
    }

    public function query_stock_result(Request $request){
        if($request->has('warehouse_id')){
            $warehouse_id[]  = $request->warehouse_id;
        }else{
            $warehouse_id = WhWarehouse::select('id')->get()->toArray();
        }

        $result = WhStock::all();
        return view('move.query_stock_result',[
            'result' => $result 
        ]);

    }

      
    public function query_kardex(){
        return view('move.query_kardex');
    }
}
