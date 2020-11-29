<?php

namespace App\Http\Controllers\Move;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\WhTransfer;

class TransferController extends Controller
{
    private $items = 40;
    private $module = 'move.transfer';
    public function index(Request $request){
        $result = WhTransfer::where('datetrx','LIKE',"%{$request->q}%")
            ->paginate($this->items);
        $result->appends(['q' => $request->q]);

        // Opciones de seguridad
        $grant = Auth::user()->grant($this->module);
        if($grant->isupdate == 'N'){ return view('error',['grant' => $grant,'action'=>'isgrant']);}

        return view('move.transfer',[
            'result' => $result,
            'q' => $request->q,
        ]);
    }

    public function create(){
        $token = md5(Str::random(9));
        session(['output_token'   => $token]);
        session(['output_datetrx' => date("Y-m-d")]);
        return redirect(route('transferline.index'));
        
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
