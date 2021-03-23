<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhPosConfig;
use Illuminate\Support\Facades\Auth;

class PosConfigController extends Controller{
    private $items = 40; 
    private $module = 'system.posconfig';
    public function index(Request $request){
        /*
        $result = WhPosConfig::select('wh_pos_configs.*','wh_warehouses.warehousename','wh_sequencers.sequencername')
            ->join('wh_warehouses','wh_warehouses.id','wh_pos_configs.warehouse_id')
            ->join('wh_sequencers','wh_sequencers.id','wh_pos_configs.sequencer_id')
            ->paginate($this->items);    
        */    
        $result = WhPosConfig::paginate($this->items);      
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isgrant == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('system.posconfig',[
            'result' => $result,
            'q' => $request->q,
            'grant' => $grant
        ]);
    }

    public function create(){
       
        return view('system.posconfig_form',[
            'mode' => 'new',
            'row' => new WhPosConfig(),
           
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'posname' => 'required',
            'warehouse_id' => 'required',
        ]);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'iscreate']);}
       
        $request->merge(array('ismovestock' => $request->has('ismovestock') ? 'Y' : 'N'));
        $request->merge(array('iscreateproduct' => $request->has('iscreateproduct') ? 'Y' : 'N'));
        $request->merge(array('iscreatebpartner' => $request->has('iscreatebpartner') ? 'Y' : 'N'));
        $request->merge(array('isactive' => $request->has('isactive') ? 'Y' : 'N'));
        $row = new WhPosConfig();
        $row->create($request->all());
        return redirect(route('posconfig.index'))->with('message','Creo correctamente el item');
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

    public function edit($id){
        $row = WhPosConfig::find($id);
        return view('system.posconfig_form',[
            'mode' => 'edit',
            'row' => $row,
        ]);
    }

    public function update(Request $request, $id){
        $request->validate([
            'posname' => 'required',
            'warehouse_id' => 'required',
        ]);
        //dd($request);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isupdate']);}
        // #########################################################################################

        $request->merge(array('ismovestock' => $request->has('ismovestock') ? 'Y' : 'N'));
        $request->merge(array('iscreateproduct' => $request->has('iscreateproduct') ? 'Y' : 'N'));
        $request->merge(array('iscreatebpartner' => $request->has('iscreatebpartner') ? 'Y' : 'N'));
        $request->merge(array('isactive' => $request->has('isactive') ? 'Y' : 'N'));
        $row = WhPosConfig::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('posconfig.index'))->with('message','Se actualizo correctamente');
    }

    public function destroy($id){
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ 
            return response()->json(['status' => FALSE,'message' => 'No tienes permiso para eliminar']);
        }
        try {
            $row = WhPosConfig::findOrFail($id);
            $row->delete();
        } catch(\Illuminate\Database\QueryException $e) {
            return response()->json(['status' => FALSE,'message' => $e->getMessage()]);
        }
        return response()->json(['status' => TRUE,'message' => "Se elimino el registro #{$row->id}"]);
    }
}
