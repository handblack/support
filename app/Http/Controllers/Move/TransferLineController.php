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

class TransferLineController extends Controller{
    private $items = 40;
    private $module = 'move.transfer.line';
    public function index(Request $request){
        $token = session('output_token');

        $warehouseto['id']     = session('output_warehouseto_id');
        $warehouseto['text']   = session('output_warehouseto_name');
        
        $warehouse['id']    = session('output_warehouse_id');
        $warehouse['text']  = session('output_warehouse_name');
        
        $reason['id']       = session('output_reason_id');
        $reason['text']     = session('output_reason_name');

        $datetrx            = session('output_datetrx');

        $result = WhTemp::where('token',$token)
            ->paginate($this->items);

        return view('move.transferline',[
            'result'    => $result,
            'q'         => $request->q,
            'token'     => $token,
            'warehouseto'=> $warehouseto,
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
        //
    }

    public function store(Request $request){
        $request->validate([
            'warehouse_id'  => 'required',
            'warehouse_to'  => 'required',
            'reason_id'     => 'required',
            'product_id'    => 'required',
            'qty'           => 'required'
        ]);
   
        //Warehouse 
        $sn = WhWarehouse::find($request->warehouse_id);
        session(['output_warehouse_id'   => $sn->id]);
        session(['output_warehouse_name' => $sn->warehousename]);
        //Warehouseto 
        $sn = WhWarehouse::find($request->warehouse_id);
        session(['output_warehouseto_id'   => $sn->id]);
        session(['output_warehouseto_name' => $sn->warehousename]);
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
        $row->save();
        return back()->with('message','Se creo correctamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
