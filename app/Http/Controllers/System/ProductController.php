<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhLine;
use App\Models\WhSubLine;
use App\Models\WhFamily;
use App\Models\WhUm;

class ProductController extends Controller{
    private $items = 40; 
    public function index(Request $request){
        $result = WhProduct::where('productname','LIKE',"%{$request->q}%")
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);
        return view('master.product',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        $lines = WhLine::all();
        $sublines = WhSubLine::all();
        $families = WhFamily::all();
        $ums = WhUm::all();
        return view('master.product_form',[
            'mode' => 'new',
            'row' => new WhProduct(),
            'lines' => $lines,
            'sublines' => $sublines,
            'families' => $families,
            'ums' => $ums
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'productname' => 'required'
        ]);
        $row = new WhProduct();
        $row->create($request->all());
        return redirect(route('product.index'))->with('message','Creo correctamente el item');
    }

    public function show($id){
        //
    }
 
    public function edit($id){
        $row = WhProduct::findOrFail($id);
        $lines = WhLine::all();
        $sublines = WhSubLine::all();
        $families = WhFamily::all();
        $ums = WhUm::all();
        return view('master.product_form',[
            'mode' => 'edit',
            'row' => $row,
            'lines' => $lines,
            'sublines' => $sublines,
            'families' => $families,
            'ums' => $ums
        ]);
    }

    public function update(Request $request, $id){
        $request->validate([
            'productname' => 'required'
        ]);
        $row = WhProduct::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('product.index'))->with('message','Se actualizo correctamente');
    }

    public function destroy($id){
        $row = WhProduct::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
