<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Team;

class TeamController extends Controller{
    private $items = 40; 
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q);
        $result = Team::where('name','LIKE',"{$q}%")
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
        return view('master.team',[
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
        return view('master.team_form',[
            'mode' => 'new',
            'row' => new Team(),
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'name' => 'required',
            'isactive' => 'required',
        ]);
        $row = new Team();
        $row->name = $request->name;
        $row->isactive = $request->isactive;
        return redirect(route('teams.index'))->with('message','Registro Creado');
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
        $row = Team::findOrFail($id);
        return view('master.team_form',[
            'mode' => 'edit',
            'row' => $row,
        ]);
    }

    public function update(Request $request, $id){
        $request->validate([
            'name' => 'required',
            'isactive' => 'required',
        ]);
        $row = Team::find($id);
        $row->name = $request->name;
        $row->isactive = $request->isactive;
        $row->save();
        return redirect(route('teams.index'))->with('message','Se actualizo correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = Team::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
