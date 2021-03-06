<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\WhLine;


class LineController extends Controller{
    private $items = 40;
    private $module = 'master.product.line';
    public function index(Request $request){   
        $result = WhLine::where('linename','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('master.line',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        return view('master.line_form',[
            'mode' => 'new',
            'row' => new WhLine(),
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'linename' => 'required'
        ]);
        $row = new WhLine();
        $row->create($request->all());
        return redirect(route('line.index'))->with('message','Se creo el registro!');
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
    public function edit($id){
        $row = WhLine::find($id);
        return view('master.line_form',[
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
            'linename' => 'required'
        ]);
        $row = WhLine::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('line.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id){
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ 
            return response()->json(['status' => FALSE,'message' => 'No tienes permiso para eliminar']);
            //return view('error',['grant' => $grant,'action'=>'isdelete']);
        }
        try {
            $row = WhLine::findOrFail($id);
            $row->delete();
        } catch(\Illuminate\Database\QueryException $e) {
            return response()->json(['status' => FALSE,'message' => $e->getMessage()]);
        }
        return response()->json(['status' => TRUE,'message' => "Se elimino el registro #{$row->id}"]);
    }
}
