<?php

namespace App\Http\Controllers\System;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhLine;
use App\Models\WhSubLine;
use App\Models\WhFamily;
use App\Models\WhUm;

use Illuminate\Support\Facades\Auth;
 

class ProductController extends Controller{
    private $items = 40; 
    private $module = 'master.product';
    public function index(Request $request){
        $result = WhProduct::select(
                'wh_products.*',
                'wh_ums.umname'
            )
            ->where('productname','LIKE',"%{$request->q}%")
            ->leftJoin('wh_ums','wh_ums.id','wh_products.um_id')
            ->leftJoin('wh_users','wh_users.id','wh_products.updated_by')
            ->paginate($this->items); 
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('master.product',[
            'result' => $result,
            'q' => $request->q,
            'grant' => $grant
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
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'iscreate']);}

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
            'productcode' => [
                                'required',                                 
                            ],
            'productname' => 'required',
            'um_id'     => 'required',

        ]);
        // -------------------------------------------
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isupdate']);}
        // #########################################################################################
        $row = WhProduct::find($id);
        $row->fill($request->all());
        $row->save();
        return redirect(route('product.index'))->with('message','Se actualizo correctamente');
    }

    public function destroy($id){
        // #########################################################################################
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isdelete']);}
        // #########################################################################################
        $row = WhProduct::find($id);
        $row->delete();
        return back()->with('message','Se elimino correctamente');
    }
}
