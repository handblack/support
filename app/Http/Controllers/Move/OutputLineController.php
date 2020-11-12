<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhTemp;
use App\Models\WhProduct;
use App\Models\WhBpartner;
use App\Models\WhWarehouse;
use App\Models\WhReason;
use App\Models\WhUm;

class OutputLineController extends Controller{
    private $items = 40;
    public function index(Request $request){
        if(!session()->has('output_token')){
            return redirect(route('output.create'));
        }
        $token              = session('output_token');
        $bpartner['id']     = session('output_bpartner_id');
        $bpartner['text']   = session('output_bpartner_name');
        
        $warehouse['id']    = session('output_warehouse_id');
        $warehouse['text']  = session('output_warehouse_name');
        
        $reason['id']       = session('output_reason_id');
        $reason['text']     = session('output_reason_name');

        $datetrx            = session('output_datetrx');

        $result = WhTemp::where('token',$token)
            ->paginate($this->items);

        return view('move.outputline',[
            'result'    => $result,
            'q'         => $request->q,
            'token'     => $token,
            'bpartner'  => $bpartner,
            'warehouse' => $warehouse,
            'reason'    => $reason,
            'datetrx'   => $datetrx
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $result = WhTemp::all();
        return view('move.outputline',[
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
        session(['output_bpartner_id'   => $request->bpartner_id]);
        session(['output_bpartner_name' => "{$sn->bpartnercode} - {$sn->bpartnername}"]);
        //Warehouse 
        $sn = WhWarehouse::find($request->warehouse_id);
        session(['output_warehouse_id'   => $sn->id]);
        session(['output_warehouse_name' => $sn->warehousename]);
        //Reason
        $sn = WhReason::find($request->reason_id);
        session(['output_reason_id'   => $sn->id]);
        session(['output_reason_name' => $sn->reasonname]);
        
        session(['output_datetrx' => $request->datetrx]);

        $product = WhProduct::find($request->product_id);
        $um = WhUm::find($product->um_id);
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
