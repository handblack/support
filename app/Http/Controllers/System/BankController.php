<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use App\Models\WhBank;
use Illuminate\Http\Request;

class BankController extends Controller{
    private $items = 40;
    public function index(Request $request){
        $result = WhBank::where('bankname','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('master.bank',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        return view('master.bank_form',[
            'mode' => 'new',
            'row' => new WhBank(),
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'bankname' => 'required',
        ]);
        $row = new WhBank();
        $row->create($request->all());
        return redirect(route('bank.index'))->with('message','Se creo el registro!');
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
        $row = WhBank::find($id);
        return view('master.bank_form',[
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
            'bankname' => 'required',
        ]);
        $row = WhBank::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('bank.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = WhBank::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
