<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use App\Models\WhBpartner;
use Illuminate\Http\Request;
use App\Models\WhTemp;
use App\Models\WhProduct;
use App\Models\WhReason;
use App\Models\WhUm;
use App\Models\WhWarehouse;

class InputLineController extends Controller
{
    private $items = 40;
    private $module = 'move.input.line';
    public function index(Request $request){
        if(!session()->has('input_token')){
            return redirect(route('input.create'));
        }
        $token              = session('input_token');
        $bpartner['id']     = session('input_bpartner_id');
        $bpartner['text']   = session('input_bpartner_name');
        
        $warehouse['id']    = session('input_warehouse_id');
        $warehouse['text']  = session('input_warehouse_name');
        
        $reason['id']       = session('input_reason_id');
        $reason['text']     = session('input_reason_name');

        $datetrx            = session('input_datetrx');

        $result = WhTemp::where('token',$token)
            ->paginate($this->items);

        return view('move.inputline',[
            'result'    => $result,
            'q'         => $request->q,
            'token'     => $token,
            'bpartner'  => $bpartner,
            'warehouse' => $warehouse,
            'reason'    => $reason,
            'datetrx'   => $datetrx
        ]);
    }


    public function create(){
        $result = WhTemp::all();
        return view('move.inputline',[
            'result' => $result
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'bpartner_id'   => 'required',
            'warehouse_id'  => 'required',
            'reason_id'     => 'required',
            'product_id'    => 'required',
            'qty'           => 'required',
            'pack'          => 'required',
            'price'         => 'required'
        ]);
        //Socio de NEGOCIO
        $sn = WhBpartner::find($request->bpartner_id);
        session(['input_bpartner_id'   => $request->bpartner_id]);
        session(['input_bpartner_name' => "{$sn->bpartnercode} - {$sn->bpartnername}"]);
        //Warehouse 
        $sn = WhWarehouse::find($request->warehouse_id);
        session(['input_warehouse_id'   => $sn->id]);
        session(['input_warehouse_name' => $sn->warehousename]);
        //Reason
        $sn = WhReason::find($request->reason_id);
        session(['input_reason_id'   => $sn->id]);
        session(['input_reason_name' => $sn->reasonname]);
        
        session(['input_datetrx' => $request->datetrx]);

        $product = WhProduct::find($request->product_id);
        $um = whum::find($product->um_id);
        $row = new WhTemp();
        $row->fill($request->all());
        $row->productname = $product->productname;
        $row->productcode = $product->productcode;
        $row->umname      = $um->umname;
        $row->umshort     = $um->shortname;
        $row->grandline   = round($request->qty * $request->price, env('ROUND_DECIMAL_GRANDLINE', 2));  
        $row->save();
        return back()->with('message','Se creo correctamente');
    }

    public function show($id){}
    public function edit($id){}
    public function update(Request $request, $id){}
    
    public function destroy($id){
        $row = WhTemp::find($id);
        $row->delete();
        return back()->with('message','Se elimino item');
    }
}
