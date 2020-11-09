<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhWarehouse;
use App\Models\WhBpartner;
use App\Models\WhReason;

class AjaxController extends Controller
{
    public function search_product(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhProduct::select('id', 'productname as text')
            ->whereOr('productname','LIKE',$q)
            ->whereOr('productcode','LIKE',$request->q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_warehouse(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhWarehouse::select('id', 'warehousename as text')
            ->where('warehousename','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_bpartner(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhBpartner::select('id', 'bpartnername as text')
            ->where('bpartnername','LIKE',$q)
            ->whereOr('bpartnercode','LIKE',$q)
            ->whereOr('documentno','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_reason(Request $request){
        $movetype = last(request()->segments());
        switch($movetype){
            case 'input':       $movetype = 'IN';break;
            case 'output':      $movetype = 'SA';break;
            case 'transfer':    $movetype = 'TR';break;
            case 'production':  $movetype = 'PR';break;
            case 'decrease':    $movetype = 'ME';break;
        }
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhReason::select('id', 'reasonname as text')
            ->where('reasonname','LIKE',$q)
            ->where('movetype',$movetype)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_productcode(Request $request){
        echo 'aqui detallamos los stock '.$request->productcode;
    }


}
