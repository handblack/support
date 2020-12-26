<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WhProduct;
use App\Models\WhProductBarcode;

class AjaxPosController extends Controller{
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
            // Creamos el respose de la linea en HTML
            $item = '<tr>';
            $item .= '<td>'.$request->productcode.'</td>';
            $item .= '<td>'.$product->productname.'</td>';
            $item .= "<td>{$product->um_id}</td>";
            $item .= '</tr>';
        }
        /*
        Preparando la respuesta
        */ 
        $response = [
            'status'    => $status,
            'message'   => $message,
            'line'      => $item,
            'htmltotal' => $item,
        ];
        return response()->json($response);
    }
    public function product_remove(Request $request){
         
    }
}
