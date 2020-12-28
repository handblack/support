<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhProductBarcode;
use App\Models\WhTemp;

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
}
