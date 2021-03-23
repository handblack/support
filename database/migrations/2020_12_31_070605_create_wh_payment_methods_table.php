<?php

use App\Models\WhPaymentMethod;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhPaymentMethodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_payment_methods', function (Blueprint $table) {
            $table->id();
            $table->string('pmname');
            $table->string('pmcode');
            $table->timestamps();
        });
        $row = new WhPaymentMethod;
        $row->create(['pmcode' => 'EFE','pmname' => 'EFECTIVO']);
        $row->create(['pmcode' => 'CAR','pmname' => 'TARJETA']);
        $row->create(['pmcode' => 'TRA','pmname' => 'TRANSFERENCIA']);
        $row->create(['pmcode' => 'NCR','pmname' => 'NOTA DE CREDITO']);
        $row->create(['pmcode' => 'CUP','pmname' => 'CUPONES']);
        $row->create(['pmcode' => 'CRE','pmname' => 'VENTA A CREDITO']);

    }

  

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('wh_payment_methods');
        Schema::enableForeignKeyConstraints();
    }
}
