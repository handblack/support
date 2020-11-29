<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\WhProduction;
use App\Models\WhWarehouse;

class ProductionController extends Controller
{
    private $items = 40;
    private $module = 'move.production';
    public function index(Request $request){
        $result = WhProduction::where('datetrx','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('move.production',[
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
