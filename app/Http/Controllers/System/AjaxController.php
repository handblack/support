<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use App\Models\WhBank;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\WhProduct;
use App\Models\WhLine;
use App\Models\WhSubline;
use App\Models\WhFamily;
use App\Models\WhWarehouse;
use App\Models\WhBpartner;
use App\Models\WhCurrency;
use App\Models\WhReason;
use App\Models\WhSequencer;
use App\Models\WhStock;

class AjaxController extends Controller
{
    public function search_product(Request $request){
        $q = str_replace(' ','%',$request->q);
        $result = WhProduct::select('id','productname as text')
            ->where('productname','LIKE',"{$q}%")
            ->orWhere('productcode',$q)
            ->orderBy('productname','asc')
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
        $result = WhBpartner::select('id', DB::raw("CONCAT(bpartnercode,' - ',bpartnername) as text"))
            ->where('bpartnertype','C')
            ->where('bpartnername','LIKE',$q)
            ->whereOr('bpartnercode','LIKE',$q)
            ->whereOr('documentno','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_bpartnerp(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhBpartner::select('id', DB::raw("CONCAT(bpartnercode,' - ',bpartnername) as text"))
            ->where('bpartnertype','P')
            ->where('bpartnername','LIKE',$q)
            ->whereOr('bpartnercode','LIKE',$q)
            ->whereOr('documentno','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_bank(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhBank::select('wh_banks.id', DB::raw("CONCAT(wh_banks.bankname) as text"))
            ->where('wh_banks.bankname','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    
    public function search_line(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhLine::select('wh_lines.id', DB::raw("CONCAT(wh_lines.linename) as text"))
            ->where('wh_lines.linename','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }
    
    public function search_subline(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhSubline::select('wh_sublines.id', DB::raw("CONCAT(wh_sublines.sublinename) as text"))
            ->where('wh_sublines.sublinename','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }
    
    public function search_sequencer(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhSequencer::select('wh_sequencers.id', DB::raw("CONCAT(wh_sequencers.codsunat,' - ',wh_sequencers.sequencername) as text"))
            ->where('wh_sequencers.sequencername','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }
    
    public function search_family(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhFamily::select('wh_families.id', DB::raw("CONCAT(wh_families.familyname) as text"))
            ->where('wh_families.familyname','LIKE',$q)
            ->limit(20)
            ->get();
        return response()->json(['results' => $result]);
    }

    public function search_currency(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhCurrency::select('id', DB::raw("CONCAT(currencyname) as text"))
            ->where('wh_currency.currencyname','LIKE',$q)
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
        $product = WhProduct::select('wh_products.*',
                'wh_ums.umname')
            ->leftJoin('wh_ums','wh_ums.id','=','wh_products.um_id')
            ->where('productcode','=',$request->productcode)
            ->first();

        if($product){
            $stock = WhStock::select('wh_stock.*',
                    'wh_warehouses.warehousename',
                    'wh_warehouses.warehousecode',)
                ->where('product_id','=',$product->id)
                ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_stock.warehouse_id')
                ->get();
            return view('dashboard.search_productcode',[
                'product' => $product,
                'stock' => $stock
            ]);
        }else{
            return view('dashboard.search_productcode_nofound',[
                'productcode' => $request->productcode
            ]);
        }
    }

    public function search_bpartnercode(Request $request){
        //echo 'Aqui se detalla la informacoin de socio de negocio '.$request->productcode;
        return view('dashboard.search_bpartnercode');
    }


}
