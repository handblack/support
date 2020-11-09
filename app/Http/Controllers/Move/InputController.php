<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\WhMinput;
use App\Models\WhMinputLine;
use App\Models\WhWarehouse;
use App\Models\WhTemp;

class InputController extends Controller
{
    private $items = 40;
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhMinput::select('wh_minputs.*',
                'wh_bpartners.bpartnername',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename')
            ->where('datetrx','LIKE',"%{$request->q}%")
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_minputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_minputs.reason_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_minputs.reason_id')
            ->where('wh_bpartners.bpartnername','LIKE',$q)
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('move.input',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }


    public function create(){
        $token = md5(Str::random(9));
        session(['input_token' => $token]);
        #return redirect(route('inputline.index'));      
            
        return view('move.input_create',[
            'mode' => 'new',
            'row' => new WhMinput(),
            'warehouse' => WhWarehouse::all()
        ]);
         
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        $request->validate([
            'datetrx' => 'required'
        ]);
        $token = md5(Str::random(9));
        $fecha = $request->datetrx;
        session(['input_token' => $token]);
        session(['input_datetrx' => $fecha]);
        session(['input_warehouse_id' => $request->warehouse_id]);
        session(['input_bpartner_id' => $request->bpartner_id]);
        session(['input_reason_id' => $request->reason_id]);
        return redirect(route('inputline.index'));
    }


    public function show($id){
        $header = WhMinput::find($id);
        $lines = WhMinputLine::select(
                    'wh_minput_lines.*',
                    'wh_products.productcode',
                    'wh_products.productname')
            ->where('minput_id',$header->id)
            ->leftJoin('wh_products','wh_products.id','=','wh_minput_lines.product_id')
            ->get();
        return view('move.input_view',[
            'header' => $header,
            'lines' => $lines
        ]);
    }
    public function edit($id){}

    public function update(Request $request, $id){
        $token = $request->token;
        $header = new WhMinput();
        $header->token         = $token;
        $header->datetrx       = session('input_datetrx');
        $header->warehouse_id  = session('input_warehouse_id');
        $header->bpartner_id   = session('input_bpartner_id');
        $header->reason_id     = session('input_reason_id');
        $header->save();
        // Lines  - Creamos las lineas
        $line = new WhMinputLine();
        $temp = WhTemp::select('wh_temp.product_id','wh_temp.qty')
            ->where('token',$token)
            ->get();
        foreach($temp as $tl){
            $line->create([
                'minput_id' => $header->id,
                'product_id' => $tl->product_id,
                'qty' => $tl->qty
            ]);
        }
        return redirect(route('input.index'))->with('message','Se creo el documento');
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
