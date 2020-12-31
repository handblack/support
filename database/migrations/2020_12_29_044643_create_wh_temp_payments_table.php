<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhTempPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::create('wh_temp_payments', function (Blueprint $table) {
            $table->id();
            $table->enum('movetype',[
                'EFE', // Efectivo
                'CAR', // tarjeta de credito/debito
                'TRA', // ingreso en cuenta de banco (transferencia/deposito)
                'NCR', // Nota de Credito
                'CUP', // Cupones de descuentos
                'CRE', // Venta con credito 
            ]);
            $table->foreignId('currency_id');
            $table->double('amount')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('wh_temp_payments');
        Schema::enableForeignKeyConstraints();
    }
}
