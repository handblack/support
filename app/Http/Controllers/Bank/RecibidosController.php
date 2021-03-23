<?php

namespace App\Http\Controllers\Bank;

use App\Http\Controllers\Controller;
use App\Models\WhBankReceived;
use App\Models\WhCurrency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RecibidosController extends Controller{
    private $items = 40;
    private $module = 'master.bank.received';
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q).'%';
        $result = WhBankReceived::select('wh_bank_received.*',
                'wh_bpartners.bpartnername',
                'wh_currency.isoname',
                'wh_banks.bankname')
            ->leftJoin('wh_bpartners','wh_bpartners.id','wh_bank_received.bpartner_id')
            ->leftJoin('wh_currency','wh_currency.id','wh_bank_received.currency_id')
            ->leftJoin('wh_banks','wh_banks.id','wh_bank_received.bank_id')
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('bank.received',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }
 
    public function create(){   
        $currency = WhCurrency::all();
        return view('bank.received_form',[
            'row' => new WhBankReceived,
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
        $row = new WhBankReceived();
        $row->fill($request->all());
        $row->amount = round($request->amount,2);
        $row->exchange = round($request->exchange,3);
        $row->save();
        return redirect(route('received.index'))->with('message','Pago Recibido creado');
        //return back()->with('message','');
    }
 
    public function show($id){
        $row = WhBankReceived::find($id);
        return view('bank.received_show',['row' => $row]);
    }

    public function edit($id){
        $row = WhBankReceived::select('wh_bank_received.*',
                'wh_banks.bankname',
                DB::raw("CONCAT(wh_bpartners.bpartnercode,' - ', wh_bpartners.bpartnername) AS bpartnername"))
            ->leftJoin('wh_bpartners','wh_bpartners.id','wh_bank_received.bpartner_id')
            ->leftJoin('wh_banks','wh_banks.id','wh_bank_received.bank_id')
            ->find($id);
        $currency = WhCurrency::all();
        return view('bank.received_form',[
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
        $row = WhBankReceived::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('received.index'))->with('message','Se actualizo correctamente');
    }

    public function destroy($id){
        $row = WhBankReceived::find($id);
        $row->delete();
        return back()->with('message','Se elimino el registro');
    }
}
