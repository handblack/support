<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhProductBarcode;
use App\Models\WhTemp;
use App\Models\WhTempPayment;

class AjaxPosController extends Controller{
    private $round_qty;
    private $round_amount;
    private $round_price;
    private $round_grandprice;
    #public function __construct(array $attributes = array()){
    #    parent::__construct($attributes);
    public function __construct() {
		//parent::__construct();
        $this->round_qty = env('ROUND_DECIMAL_QTY',5);
        $this->round_amount = env('ROUND_DECIMAL_AMOUNT',2);
        $this->round_price = env('ROUND_DECIMAL_PRICE',2);
        $this->round_grandprice = env('ROUND_DECIMAL_GRANDLINE',2);
    }
    public function product_add(Request $request){
        $status     = 0; // Se le indica error por default
        $message    = 'Error';
        $item       = '';
        if($request->has('productcode')){
            $code = $request->productcode;
            $check = WhProduct::select(
                    'wh_product_barcodes.barcode',
                    'wh_product_barcodes.product_id',
                    'wh_products.*'
                )
                ->leftJoin('wh_product_barcodes','wh_product_barcodes.id','wh_products.id')
                ->where('wh_product_barcodes.barcode','=',$code)
                ->whereOr('wh_products.productcode','=',$code)
                ->get();
            if($check->count() == 0){
                $status = 2;
                $message = "El codigo no existe {$code}";
            }else{
                $status = 1;
                $message = "Se agrego <i class='fas fa-angle-double-right'></i> {$code}";
                $product = WhProduct::find($check[0]->product_id);
            }
        }
        if($status == 1){
            //Agregamos el ITEM al temporal
            $tmp = new WhTemp();
            $tmp->token         = session('pos_token');
            $tmp->product_id    = $product->id;
            $tmp->productcode   = $product->productcode; 
            $tmp->productname   = $product->productname;
            $tmp->qty           = $request->qty;
            #$tmp->price         = 1.2;
            #$tmp->grandline     = 1.2 * 3;
            $tmp->save();
            // Creamos el respose de la linea en HTML
            
            $item = "<tr id='{$tmp->id}'>";
            $item .= "<td>{$tmp->productcode}</td>";
            $item .= "<td>{$tmp->productname}</td>";
            $item .= "<td>{$tmp->um_id}</td>";
            $item .= "<td>{$tmp->qty}</td>";
            $item .= "<td>{$tmp->price}</td>";
            $item .= '<td class="text-right">'.number_format($tmp->grandline,2,'.',',').'</td>';
            $item .= '<td><a href="#"><i class="fas fa-trash-alt"></i></a></td>';
            $item .= '</tr>';
        }
        /*
        Preparando la respuesta
        */ 
        $response = [
            'status'    => $status,
            'message'   => $message,
            'line'      => $item,
            'total'     => $this->html_total(),
        ];
        return response()->json($response);
    }
    private function html_total(){
        $html = '';
        $html .= '<tr>';
        $html .= '<td>SUBTOTAL</td>';
        $html .= '<td class="text-right">0.00</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>IGV 18%</td>';
        $html .= '<td class="text-right">0.00</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>TOTAL</td>';
        $html .= '<td class="text-right">0.00</td>';
        $html .= '</tr>';
        $html .= '';
        return $html;
    }
    public function product_remove(Request $request){
         
    }
    public function payment_add(Request $request){
        $row = new WhTempPayment();
        $row->fill($request->all());
        $row->token =  session('pos_token');
        $row->save();
        // Detalle de PAGO
        $result = $this->payment_table();
        $result['status'] = 1;
        $result['message'] = 'add';
        return response()->json($result);      
        //return 'respuesta';
    }

    public function payment_remove(Request $request){
        $row = WhTempPayment::find($request->id);
        $row->delete();
        
        $result = $this->payment_table();
        $result['status'] = 1;
        $result['message'] = 'del';
        return response()->json($this->payment_table($result,null));      
    }

    private function payment_table(){
        $html = '<thead>';
        $html .= '<tr>';
        $html .= '<th>CONCEPTO</th>';
        $html .= '<th class="text-right">IMPORTE</th>';
        $html .= '<th width="10"></th>';
        $html .= '</tr>';
        $html .= '</thead>';
        $pagos = WhTempPayment::where('token',session('pos_token'))->get(); 
        foreach($pagos as $item){
            $html .= '<tr>';
            $html .= '<td class="ml-3">X</td>';
            $importe = number_format($item->amount,env('ROUND_DECIMAL_AMOUNT'));
            $html .= "<td class='text-right'>{$importe}</td>";
            $html .= "<td><a href='#' onclick=\"payment_delete({$item->id});\"><i class=\"far fa-trash-alt\"></i></td>";
            $html .= '</tr>';
        }
        $response['detalle'] = $html;

        // Detalle de TOTALES
        $response['total'] = 'resumen-total';
        return $response;
    }
}
