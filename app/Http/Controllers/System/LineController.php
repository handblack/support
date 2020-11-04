<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhLine;

class LineController extends Controller{
    private $items = 40;
    public function index(Request $request){   
        $result = WhLine::paginate($this->items);
        $result->appends(['q' => $request->q]);
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
    public function destroy($id)
    {
        $row = WhLine::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
