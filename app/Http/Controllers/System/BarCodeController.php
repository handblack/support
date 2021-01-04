<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use App\Models\WhProductBarcode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BarCodeController extends Controller
{
    private $module = 'master.product.barcode';
    private $items = 40; 
    public function index(Request $request){
        $result = WhProductBarcode::paginate($this->items);      
        $result->appends(['q' => $request->q]);
        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isgrant == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('master.barcode',[
            'result' => $result,
            'q' => $request->q,
            'grant' => $grant
        ]);
    }
    public function create()
    {
        return view('master.barcode_form',[
            'mode' => 'new',
            'row' => new WhProductBarcode(),
           
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
            'barcode' => 'required',
        ]);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->iscreate == 'N'){ return view('error',['grant' => $grant,'action'=>'iscreate']);}
        // -------------------------------------------
        $row = new WhProductBarcode();
        $row->product_id = session('select_product_id');
        $row->barcode = $request->barcode;
        $row->save();
        return redirect(route('master.barcode'))->with('message','Creo correctamente el item');
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
        $row = WhProductBarcode::find($id);
        return view('master.barcode_form',[
            'mode' => 'edit',
            'row' => $row,
        ]);
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
        $request->validate([
            'barcode' => 'required',            
        ]);
        //dd($request);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isupdate']);}
        // #########################################################################################
        $row = WhProductBarcode::find($id);
        $row->product_id = session('select_product_id');
        $row->barcode = $request->barcode;
        $row->save();
        return redirect(route('barcode.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ 
            return response()->json(['status' => FALSE,'message' => 'No tienes permiso para eliminar']);
        }
        try {
            $row = WhProductBarcode::findOrFail($id);
            $row->delete();
        } catch(\Illuminate\Database\QueryException $e) {
            return response()->json(['status' => FALSE,'message' => $e->getMessage()]);
        }
        return response()->json(['status' => TRUE,'message' => "Se elimino el registro #{$row->id}"]);
    }
}
