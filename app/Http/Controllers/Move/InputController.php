<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhMinput;
use App\Models\WhWarehouse;

class InputController extends Controller
{
    private $items = 40;
    public function index(Request $request){
        $result = WhMinput::where('datetrx','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);
        return view('move.input',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        
        return view('move.input_create',[
            'mode' => 'new',
            'row' => new WhMinput(),
            'warehouse' => WhWarehouse::all()
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
            'datetrx' => 'required'
        ]);
        $request->create($request->all());
        

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
