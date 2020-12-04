<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use App\Models\WhSequencer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SequencerController extends Controller{
    private $items = 40;
    private $module = 'system.sequencer';
    public function index(Request $request){   
        $result = WhSequencer::where('sequencername','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('system.sequencer',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        return view('system.sequencer_form',[
            'mode' => 'new',
            'row' => new WhSequencer(),
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'sequencername' => 'required',
            'serial' => 'required'
        ]);
        $row = new WhSequencer();
        $row->create($request->all());
        return redirect(route('sequencer.index'))->with('message','Se creo el registro!');
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
        $row = WhSequencer::find($id);
        return view('system.sequencer_form',[
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
            'sequencename' => 'required'
        ]);
        $row = WhSequencer::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('sequencer.index'))->with('message','Se actualizo correctamente');
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
            $row = WhSequencer::findOrFail($id);
            $row->delete();
        } catch(\Illuminate\Database\QueryException $e) {
            return response()->json(['status' => FALSE,'message' => $e->getMessage()]);
        }
        return response()->json(['status' => TRUE,'message' => "Se elimino el registro #{$row->id}"]);
    }
}
