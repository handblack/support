<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User; 
use App\Models\Team;

class UserController extends Controller{
    private $items = 40; 
    private $module = 'system.user';
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q);
        $result = User::select(
                'wh_users.*',
                'wh_teams.name as teamname'
            )
            ->where('wh_users.name','LIKE',"{$q}%")
            ->whereOr('wh_users.email','LIKE',"{$q}%")
            ->leftJoin('wh_teams','wh_teams.id','wh_users.current_team_id')
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
        return view('system.user',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        $teams = Team::all();
        return view('system.user_form',[
            'mode' => 'new',
            'row' => new User(),
            'teams' => $teams
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
            'name' => 'required',
            'email' => 'required',
            'current_team_id' => 'required',
            'password' => 'required',
            'isactive' => 'required',
        ]);
        $row = new User();
        $row->fill($request->all());
        $row->password = Hash::make($request->password);
        $row->save();
        return redirect(route('users.index'))->with('message','Registro Creado');
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
        $row = User::findOrFail($id);
        $teams = Team::all();
        return view('system.user_form',[
            'mode' => 'edit',
            'row' => $row,
            'teams' => $teams,
        ]);
    }

    public function update(Request $request, $id){
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'current_team_id' => 'required',
            'isactive' => 'required',
        ]);
        $row = User::find($id);
        $row->name = $request->name;
        $row->email = $request->email;
        $row->current_team_id = $request->current_team_id;
        $row->isactive = $request->isactive;
        if($request->filled('password')){
            // Solo se esta actualizando
            $row->password = Hash::make($request->password);
        }
        

        if($request->email == 'soporte@miasoftware.net'){
            return redirect(route('users.index'))->with('message','La cuenta es del administrador, esta restrigida');
        }else{
            // The environment is local
            $row->save();
            return redirect(route('users.index'))->with('message','Se actualizo correctamente');
        }        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $row = User::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
