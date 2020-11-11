<?php

namespace App\Http\Controllers\Bank;

use App\Http\Controllers\Controller;
use App\Models\WhBankDelivered;
use App\Models\WhCurrency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class EntregadosController extends Controller{
    private $items = 40;
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhBankDelivered::select('wh_bank_delivered.*',
                'wh_bpartners.bpartnername',
                'wh_currency.isoname',
                'wh_banks.bankname')
            ->leftJoin('wh_bpartners','wh_bpartners.id','wh_bank_delivered.bpartner_id')
            ->leftJoin('wh_currency','wh_currency.id','wh_bank_delivered.currency_id')
            ->leftJoin('wh_banks','wh_banks.id','wh_bank_delivered.bank_id')
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('bank.delivered',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){   
        $currency = WhCurrency::all();
        return view('bank.delivered_form',[
            'row' => new WhBankDelivered,
            'currency' => $currency,
            'mode' => 'new'
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'bpartner_id'   => 'required',
            'bank_id'       => 'required',
            'currency_id'   => 'required',
            'doctype'       => 'required',
            'documentno'    => 'required',
            'amount'        => 'required'
        ]);
        $row = new WhBankDelivered();
        $row->fill($request->all());
        $row->amount = round($request->amount,2);
        $row->exchange = round($request->exchange,3);
        $row->save();
        return redirect(route('delivered.index'))->with('message','Pago Recibido creado');
        //return back()->with('message','');
    }

    public function show($id){
        //
    }

    public function edit($id){
        $row = WhBankDelivered::select('wh_bank_received.*',
                'wh_banks.bankname',
                DB::raw("CONCAT(wh_bpartners.bpartnercode,' - ', wh_bpartners.bpartnername) AS bpartnername"))
            ->leftJoin('wh_bpartners','wh_bpartners.id','wh_bank_received.bpartner_id')
            ->leftJoin('wh_banks','wh_banks.id','wh_bank_received.bank_id')
            ->find($id);
        $currency = WhCurrency::all();
        return view('bank.delivered_form',[
            'row' => $row,
            'currency' => $currency,
            'mode' => 'edit'
        ]);
    }
 
    public function update(Request $request, $id){
        $request->validate([
            'bpartner_id'   => 'required',
            'bank_id'       => 'required',
            'currency_id'   => 'required',
            'doctype'       => 'required',
            'documentno'    => 'required',
            'amount'        => 'required'
        ]);
        $row = WhBankDelivered::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('delivered.index'))->with('message','Se actualizo correctamente');
    }

    public function destroy($id){
        $row = WhBankDelivered::find($id);
        $row->delete();
        return back()->with('message','Se elimino el registro');
    }
}
