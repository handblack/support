<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\WhBpartner;

class BPartnerController extends Controller
{
    private $items = 40;
    private $module = 'master.bpartner';
    public function index(Request $request){
        $result = WhBpartner::where('bpartnername','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('master.bpartner',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('master.bpartner_form',[
            'mode' => 'new',
            'row' => new WhBpartner(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'bpartnername' => 'required'
        ]);
        $row = new WhBpartner();
        $row->create($request->all());
        return redirect(route('bpartner.index'))->with('message','Se creo el registro!');
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
        $row = WhBpartner::find($id);
        return view('master.bpartner_form',[
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
            'bpartnername' => 'required'
        ]);
        $row = WhBpartner::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('bpartner.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = WhBpartner::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
