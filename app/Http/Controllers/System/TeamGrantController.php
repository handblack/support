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
        if($request->has('isgrant')){$grant->isgrant = ($request->isgrant=='on' ? 'Y':'N');}
        if($request->has('iscreate')){$grant->iscreate = ($request->iscreate=='on' ? 'Y':'N');}
        if($request->has('isread')){$grant->isread = ($request->isread=='on' ? 'Y':'N');}
        if($request->has('isupdate')){$grant->isupdate = ($request->isupdate=='on' ? 'Y':'N');}
        if($request->has('isdelete')){$grant->isdelete = ($request->isdelete=='on' ? 'Y':'N');}
        //$grant->fill($request->all());
        $grant->save();
        //return back()->with('message','Actualizado ' . $grant->module);
        return response()->json(['message'=>"Se actualizo <strong>{$grant->module}</strong>"]);
        //return response()->json($grant);
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
