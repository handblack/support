<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use App\Models\WhMoutput;
use App\Models\WhMoutputLine;
use App\Models\WhTemp;
use PDF;

class OutputController extends Controller{
    private $items = 40;
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhMoutput::select('wh_moutputs.*',
                'wh_bpartners.bpartnername',
                'wh_bpartners.bpartnercode',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename',
                'wh_users.name AS username')
            ->where('wh_bpartners.bpartnercode','LIKE',"{$request->q}%")
            ->orWhere('wh_moutputs.id','LIKE',"{$q}")
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_moutputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_moutputs.warehouse_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_moutputs.reason_id')
            ->leftJoin('wh_users','wh_users.id','=','wh_moutputs.created_by')
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('move.output',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }
 
    public function create(){
        $token = md5(Str::random(9));
        session(['output_token' => $token]);
        session(['output_datetrx' => date("Y-m-d")]);
        session()->forget('output_bpartner_id');
        session()->forget('output_warehouse_id');
        session()->forget('output_reason_id');
        return redirect(route('outputline.index'));
    }

    public function store(Request $request)
    {
        //
    }
 
    public function show($id){
        $header = WhMoutput::select('wh_moutputs.*',
                'wh_bpartners.bpartnername',
                'wh_reasons.reasonname',
                'wh_warehouses.warehousecode',
                'wh_warehouses.warehousename')
            ->leftJoin('wh_bpartners','wh_bpartners.id','=','wh_moutputs.bpartner_id')
            ->leftJoin('wh_warehouses','wh_warehouses.id','=','wh_moutputs.warehouse_id')
            ->leftJoin('wh_reasons','wh_reasons.id','=','wh_moutputs.reason_id')
            ->find($id);

        $lines = WhMoutputLine::select(
                    'wh_moutput_lines.*',
                    'wh_products.productcode',
                    'wh_products.productname')
            ->where('moutput_id',$header->id)
            ->leftJoin('wh_products','wh_products.id','=','wh_moutput_lines.product_id')
            ->get();
        //Verifiamos si la peticion es para PDF
        if(isset($_GET['pdf'])){
            return \PDF::loadView('move.output_view_pdf',[
                        'header' => $header,
                        'lines' => $lines
                    ])
                ->setPaper('a4', 'portrait')
                ->download("NS_{$header->id}.pdf");
        }        
        return view('move.output_view',[
            'header' => $header,
            'lines' => $lines
        ]);
    }

    public function edit($id){}

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id){
        $token = $request->token;
        $header = new WhMoutput();
        $header->token         = $token;
        $header->datetrx       = session('output_datetrx');
        $header->warehouse_id  = session('output_warehouse_id');
        $header->bpartner_id   = session('output_bpartner_id');
        $header->reason_id     = session('output_reason_id');
        $header->created_by    = Auth::id();
        $header->save();
        // Lines  - Creamos las lineas
        $line = new WhMoutputLine();
        $temp = WhTemp::select('product_id','qty','price','pack','grandline')
            ->where('token',$token)
            ->get();
        foreach($temp as $tl){
            $line->create([
                'moutput_id'    => $header->id,
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
        //$temp = WhTemp::where('token',$token)->delete();
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
