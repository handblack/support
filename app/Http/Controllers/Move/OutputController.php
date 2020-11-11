<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\WhMoutput;
use App\Models\WhMoutputLine;
use App\Models\WhWarehouse;
use App\Models\WhTemp;

class OutputController extends Controller{
    private $items = 40;
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhMoutput::select('wh_moutputs.*',
                'wh_bpartners.bpartnername',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename')
            ->where('datetrx','LIKE',"%{$request->q}%")
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_moutputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_moutputs.reason_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_moutputs.reason_id')
            ->where('wh_bpartners.bpartnername','LIKE',$q)
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('move.output',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        $token = md5(Str::random(9));
        session(['output_token'   => $token]);
        session(['output_datetrx' => date("Y-m-d")]);
        return redirect(route('outputline.index'));
    }

    public function store(Request $request)
    {
        //
    }


    public function show($id){
        $header = WhMoutput::find($id);
        $lines = WhMoutputLine::select(
                    'wh_moutput_lines.*',
                    'wh_products.productcode',
                    'wh_products.productname')
            ->where('minput_id',$header->id)
            ->leftJoin('wh_products','wh_products.id','=','wh_minput_lines.product_id')
            ->get();
        return view('move.output_view',[
            'header' => $header,
            'lines' => $lines
        ]);
    }

    public function edit($id){
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
        $token = $request->token;
        $header = new WhMoutput();
        $header->token         = $token;
        $header->datetrx       = session('output_datetrx');
        $header->warehouse_id  = session('output_warehouse_id');
        $header->bpartner_id   = session('output_bpartner_id');
        $header->reason_id     = session('output_reason_id');
        $header->save();
        // Lines  - Creamos las lineas
        $line = new WhMoutputLine();
        $temp = WhTemp::select('wh_temp.product_id','wh_temp.qty')
            ->where('token',$token)
            ->get();
        foreach($temp as $tl){
            $line->create([
                'moutput_id' => $header->id,
                'product_id' => $tl->product_id,
                'qty' => $tl->qty
            ]);
        }
        // Limpiamos el temporal por el hash
        WhTemp::where('token',$token)->delete();
        return redirect(route('output.index'))->with('message','Se creo el documento');
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
