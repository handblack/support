<?php

namespace App\Http\Controllers;

use App\Models\WhBpartner;
use Illuminate\Http\Request;

class DashboardController extends Controller{
    public function page_dash(){
        //$user = Auth::user();
        //session(['run_team_id' => Auth::user()->current_team_id]);
        $bpartner = WhBpartner::all();
        return view('dashboard',[
            'bpartner' => $bpartner
        ]);
    }
}
