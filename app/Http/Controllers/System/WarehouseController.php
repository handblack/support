<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\WhWarehouse;

class WarehouseController extends Controller
{
    private $items = 40;
    private $module = 'master.warehouse';
    public function index(Request $request){
        $result = WhWarehouse::where('warehousename','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        
        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('master.warehouse',[
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
        return view('master.warehouse_form',[
            'mode' => 'new',
            'row' => new WhWarehouse(),
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
            'warehousename' => 'required',
            'warehousecode' => 'required',
            'ubigeo' => 'required',
        ]);
        $row = new WhWarehouse();
        $row->create($request->all());
        return redirect(route('warehouse.index'))->with('message','Se creo el registro!');
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
        $row = WhWarehouse::find($id);
        return view('master.warehouse_form',[
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
            'warehousename' => 'required',
            'warehousecode' => 'required',
            'ubigeo' => 'required',
        ]);
        $row = WhWarehouse::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('warehouse.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = WhWarehouse::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
