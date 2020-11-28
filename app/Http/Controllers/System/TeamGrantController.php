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
    private $module = 'team.grant';
    private $grant = null;
    public function __construct(){
        $this->grant = DB::select(DB::raw('CALL sp_grant(?,?,?)',[Auth::id(), $this->module]));
    }
    public function index(Request $request){
        $q = str_replace(' ','%',$request->q);
        $team = Team::find(session('select_team_id'));
        $result = WhTeamGrant::where('team_id','=',$team->id)
            ->where('name','LIKE',"{$q}%")
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
        return view('master.teamgrant',[
            'team' => $team,
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
