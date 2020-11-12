<?php


use App\Http\Controllers\System\ProductController;
use App\Http\Controllers\System\LineController;
use App\Http\Controllers\System\SubLineController;
use App\Http\Controllers\System\FamilyController;
use App\Http\Controllers\System\UnitController;
use App\Http\Controllers\System\ReasonController;
use App\Http\Controllers\System\BPartnerController;
use App\Http\Controllers\System\BarCodeController;
use App\Http\Controllers\System\WarehouseController;
use App\Http\Controllers\System\CurrencyController;
use App\Http\Controllers\System\BankController;

use App\Http\Controllers\System\AjaxController;

use App\Http\Controllers\Move\InputController;
use App\Http\Controllers\Move\InputLineController;
use App\Http\Controllers\Move\OutputController;
use App\Http\Controllers\Move\OutputLineController;
use App\Http\Controllers\Move\TransferController;
use App\Http\Controllers\Move\TransferLineController;
use App\Http\Controllers\Move\ProductionController;
use App\Http\Controllers\Move\WastageController;
use App\Http\Controllers\Move\TempController;
use App\Http\Controllers\Move\QueryController;

/* Bancos */
use App\Http\Controllers\Bank\RecibidosController;
use App\Http\Controllers\Bank\EntregadosController;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
/*
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
*/
Route::middleware(['auth:sanctum', 'verified'])->group(function(){
    Route::get('/dashboard',function (){
        return view('dashboard');
    })->name('dashboard');

    Route::resource('/master/product',ProductController::class);
    Route::resource('/master/product/barcode',BarCodeController::class);
    Route::resource('/master/line',LineController::class);
    Route::resource('/master/subline',SubLineController::class);
    Route::resource('/master/family',FamilyController::class);
    Route::resource('/master/um',UnitController::class);
    Route::resource('/master/reason',ReasonController::class);
    Route::resource('/master/currency',CurrencyController::class);
    Route::resource('/master/warehouse',WarehouseController::class);
    Route::resource('/master/bank',BankController::class);

    /* Socio de Negocio */
    Route::resource('/partner/bpartner',BPartnerController::class);
    Route::resource('/partner/reportaccount',BPartnerController::class);


    /* Aqui se acepta las operacoines de movimiento */
    Route::resource('/move/input',InputController::class);
    Route::resource('/move/inputline',InputLineController::class);
    Route::resource('/move/output',OutputController::class);
    Route::resource('/move/outputline',OutputLineController::class);
    Route::resource('/move/transfer',TransferController::class);
    Route::resource('/move/transferline',TransferLineController::class);
    Route::resource('/move/production',ProductionController::class);
    Route::resource('/move/wastage',WastageController::class);
    Route::resource('/move/temp',WastageController::class);
    
    
    /* Bancos */
    Route::resource('/bank/received',RecibidosController::class);
    Route::resource('/bank/delivered',EntregadosController::class);

    /* Habilitamos el servicio de AJAX */
    Route::post('/ajax/search/productcode',[AjaxController::class,'search_productcode'])->name('ajax.search.productcode');
    Route::post('/ajax/search/product',[AjaxController::class,'search_product'])->name('ajax.search.product');
    Route::post('/ajax/search/warehouse',[AjaxController::class,'search_warehouse'])->name('ajax.search.warehouse');
    Route::post('/ajax/search/bpartner',[AjaxController::class,'search_bpartner'])->name('ajax.search.bpartner');
    Route::post('/ajax/search/bpartnerp',[AjaxController::class,'search_bpartnerp'])->name('ajax.search.bpartnerp');
    Route::post('/ajax/search/currency',[AjaxController::class,'search_currency'])->name('ajax.search.currency');
    Route::post('/ajax/search/bank',[AjaxController::class,'search_bank'])->name('ajax.search.bank');
    Route::post('/ajax/search/reason/input',[AjaxController::class,'search_reason'])->name('ajax.search.reason.input');
    Route::post('/ajax/search/reason/output',[AjaxController::class,'search_reason'])->name('ajax.search.reason.output');
    Route::post('/ajax/search/reason/transfer',[AjaxController::class,'search_reason'])->name('ajax.search.reason.transfer');
    Route::post('/ajax/search/reason/production',[AjaxController::class,'search_reason'])->name('ajax.search.reason.production');
    Route::post('/ajax/search/reason/decrease',[AjaxController::class,'search_reason'])->name('ajax.search.reason.decrease');

    // Consulta de STOCK
    Route::get('/query/stock',[QueryController::class,'query_stock_live'])->name('query.stock');
    Route::post('/query/stock',[QueryController::class,'query_stock_live_result'])->name('query.stock.result');
    Route::get('/query/kardex',[QueryController::class,'query_kardex'])->name('query.kardex');


});
