<?php

namespace App\Http\Controllers;

use App\Models\WhBpartner;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function page_dash(){
        $bpartner = WhBpartner::all();
        return view('dashboard',[
            'bpartner' => $bpartner
        ]);
    }
}
