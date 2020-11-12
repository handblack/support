<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\WhMinput;
use App\Models\WhMinputLine;
use App\Models\WhTemp;
use Illuminate\Support\Facades\Auth;
use PDF;

class InputController extends Controller{
    private $items = 40;
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhMinput::select('wh_minputs.*',
                'wh_bpartners.bpartnername',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename',
                'wh_users.name AS username')
            ->where('datetrx','LIKE',"%{$request->q}%")
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_minputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_minputs.warehouse_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_minputs.reason_id')
            ->leftJoin('wh_users','wh_users.id','=','wh_minputs.created_by')
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
        session(['input_datetrx' => date("Y-m-d")]);
        session()->forget('input_bpartner_id');
        session()->forget('input_warehouse_id');
        session()->forget('input_reason_id');
        return redirect(route('inputline.index'));
    }

    public function store(Request $request){

    }

    public function show($id){
        $header = WhMinput::select('wh_minputs.*',
                'wh_bpartners.bpartnername',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename')
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_minputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_minputs.warehouse_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_minputs.reason_id')
            ->find($id);

        $lines = WhMinputLine::select(
                    'wh_minput_lines.*',
                    'wh_products.productcode',
                    'wh_products.productname')
            ->where('minput_id',$header->id)
            ->leftJoin('wh_products','wh_products.id','=','wh_minput_lines.product_id')
            ->get();
        //Verifiamos si la peticion es para PDF
        if(isset($_GET['pdf'])){
            return \PDF::loadView('move.input_view_pdf',[
                        'header' => $header,
                        'lines' => $lines
                    ])
                ->setPaper('a4', 'portrait')
                ->download("NI_{$header->id}.pdf");
        }        
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
        $header->created_by    = Auth::id();
        $header->save();
        // Lines  - Creamos las lineas
        $line = new WhMinputLine();
        $temp = WhTemp::select('product_id','qty','price','pack','grandline')
            ->where('token',$token)
            ->get();
        foreach($temp as $tl){
            $line->create([
                'minput_id'     => $header->id,
                'product_id'    => $tl->product_id,
                'qty'           => $tl->qty,
                'price'         => $tl->price,
                'pack'          => $tl->pack,
                'grandline'     => $tl->grandline
            ]);
        }
        // Adicionamos los datos de la cabecera
        $header->grandqty = $temp->sum('qty');
        $header->grandamount = $temp->sum('grandline');
        $header->save();
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
