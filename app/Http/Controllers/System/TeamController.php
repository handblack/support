<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Team;

class TeamController extends Controller{
    private $items = 40; 
    private $module = 'system.team';
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q);
        $result = Team::where('name','LIKE',"{$q}%")
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
         // Opciones de seguridad
         $grant = Auth::user()->grant($this->module);
         if($grant->isgrant == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}
 
        return view('master.team',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

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
        $row->fill($request->all());
        $row->user_id = 1;
        $row->personal_team = 0;
        $row->save();
        return redirect(route('teams.index'))->with('message','Registro Creado');
    }

    public function show($id){
        session(['select_team_id' => $id]);
        return redirect(route('teamgrant.index')); 
    }

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

    public function destroy($id)
    {
        $row = Team::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
