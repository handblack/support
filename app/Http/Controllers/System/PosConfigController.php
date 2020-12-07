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
        $result = WhPosConfig::select(
                'wh_products.*',
                'wh_ums.umname'
            )
            ->where('productname','LIKE',"%{$request->q}%")
            ->leftJoin('wh_ums','wh_ums.id','wh_products.um_id')
            ->leftJoin('wh_users','wh_users.id','wh_products.updated_by')
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
            'posname' => 'required'
        ]);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'iscreate']);}

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
        ]);
        //dd($request);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isupdate']);}
        // #########################################################################################
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
