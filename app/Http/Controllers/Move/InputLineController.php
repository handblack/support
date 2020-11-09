<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhTemp;
use App\Models\WhProduct;

class InputLineController extends Controller
{
    private $items = 40;
    public function index(Request $request){
        $token = session('input_token');
        /*
        $result = WhTemp::where('productname','LIKE',"%{$request->q}%")
            ->where('token',$token)
            ->paginate($this->items);
            */
        $result = WhTemp::where('token',$token)
            ->paginate($this->items);
        //$result->appends(['q' => $request->q]);
        //dd($result);
        return view('move.inputline',[
            'result' => $result,
            'q' => $request->q,
            'token' => $token
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $result = WhTemp::all();
        return view('move.inputline',[
            'result' => $result
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
            'product_id' => 'required',
            'qty' => 'required'
        ]);
        $product = WhProduct::find($request->product_id);
        $row = new WhTemp();
        $row->fill($request->all());
        $row->productname = $product->productname;
        $row->productcode = $product->productcode;
        $row->save();
        return back()->with('message','Se creo correctamente');
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
