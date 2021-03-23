<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\WhTeamGrant;
use App\Models\Team;
use Illuminate\Support\Facades\DB;

class TeamGrantController extends Controller{
    private $items = 40; 
    private $module = 'system.team.grant';
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q);
        $team = Team::find(session('select_team_id'));
        $result = WhTeamGrant::where('team_id','=',$team->id)
            ->where('name','LIKE',"{$q}%")
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
        if($result->count() == 0){
            // Como no hay registros de grant, copiamos dle usuario admin
            $this->refreshgrant();
            return redirect(route('teamgrant.index'));
        }
        return view('master.teamgrant',[
            'team' => $team,
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){}
    public function store(Request $request){}
    public function destroy($id){}
    public function show($id){
        //
    }

    public function edit($id){
        return view('master.teamgrant_form');
    }

    public function update(Request $request, $id){
        $grant = WhTeamGrant::find($id);
        if(!($grant->isgrant == 'D')){$grant->isgrant = ($request->has('isgrant')) ? 'Y' : 'N';}
        if(!($grant->iscreate == 'D')){$grant->iscreate = ($request->has('iscreate')) ? 'Y' : 'N';}
        if(!($grant->isread == 'D')){$grant->isread = ($request->has('isread')) ? 'Y' : 'N';}
        if(!($grant->isupdate == 'D')){$grant->isupdate = ($request->has('isupdate')) ? 'Y' : 'N';}
        if(!($grant->isdelete == 'D')){$grant->isdelete = ($request->has('isdelete')) ? 'Y' : 'N';}
        $grant->save();
        return response()->json(['message'=>"Se actualizo <strong>{$grant->module}</strong> R={$request->isgrant} V={$grant->isgrant}"]);
    }
    
    private function refreshgrant(){
        $grants = WhTeamGrant::where('team_id','=',1)->get();
        $row = new WhTeamGrant;
        $idt = session('select_team_id');
        foreach($grants as $g){
            $row->create([
                'team_id' => $idt,
                'name' => $g->module,
                'module' => $g->module
            ]);
        }
    }

}
