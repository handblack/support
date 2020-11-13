<?php

namespace App\Http\Controllers\move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\WhWarehouse;
use App\Models\WhStock;
use App\Models\WhBpartner;

class QueryController extends Controller
{
    public function query_stock_live(){
        return view('move.query_stock');
    }

    public function query_stock_live_result(Request $request){
        if($request->has('warehouse_id')){
            $warehouse_id[]  = $request->warehouse_id;
        }else{
            $warehouse_id = WhWarehouse::select('id')->get()->toArray();
        }

        $result = WhStock::select('wh_stock.*',
                    'wh_products.productcode',
                    'wh_products.productname',
                    'wh_warehouses.warehousecode',
                    'wh_ums.umname',
                    'wh_lines.linename',
                    'wh_sublines.sublinename',
                    'wh_families.familyname',
                )
            ->leftJoin('wh_warehouses','wh_warehouses.id','wh_stock.warehouse_id')
            ->leftJoin('wh_products','wh_products.id','wh_stock.product_id')
            ->leftJoin('wh_ums','wh_ums.id','wh_products.um_id')
            ->leftJoin('wh_lines','wh_lines.id','wh_products.line_id')
            ->leftJoin('wh_sublines','wh_sublines.id','wh_products.subline_id')
            ->leftJoin('wh_families','wh_families.id','wh_products.family_id')
            ->paginate(40);
        return view('move.query_stock_result',[
            'result' => $result 
        ]);

    } 

      
    public function query_kardex(){
        return view('move.query_kardex');
    }

    public function search_eecc(){
        $dateinit = date("Y-m-d",strtotime(date("Y-m-d")." -1 month"));
        $dateend = date("Y-m-d");
        if(session()->has('eecc_bpartner_id')){
            $bpartner = WhBpartner::find(session('eecc_bpartner_id'));
            $dateinit = session('eecc_dateinit');
            $dateend = session('eecc_dateend');
        }else{
            $bpartner = new WhBpartner();
        }        
        return view('dashboard.bpartner_eecc',[
            'bpartner' => $bpartner,
            'dateinit' => $dateinit,
            'dateend' => $dateend
        ]);
    }

    public function search_eecc_result(Request $request){
        $bpartner = WhBpartner::find($request->bpartner_id);
        session(['eecc_bpartner_id' => $bpartner->id ]);
        session(['eecc_dateinit'    => $request->dateinit ]);
        session(['eecc_dateend'     => $request->dateend ]);
        $result = DB::select('CALL sp_report_eecc(:bpartner, :dateinit, :dateend)', [
            ':bpartner' => $request->bpartner_id,
            ':dateinit' => $request->dateinit,
            ':dateend' => $request->dateend
        ]);
        return view('dashboard.bpartner_eecc_result',[
            'result' => $result,
            'bpartner' => $bpartner,
            'dateinit' => $request->dateinit,
            'dateend' => $request->dateend,
        ]);
    }
}
