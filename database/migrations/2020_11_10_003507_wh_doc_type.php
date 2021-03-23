<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhDocType extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_doc_type', function (Blueprint $table) {
            $table->id();
            $table->string('doctypename',80);
            $table->enum('isorder',['Y','N'])->default('N'); // Pedidos
            $table->enum('isinvoice',['Y','N'])->default('N'); // Facturacion + Nota Debito
            $table->enum('isreturn',['Y','N'])->default('N'); // Nota de Credito
            $table->enum('iswarehouse',['Y','N'])->default('N'); // Nota de Credito
            //Estado del registro
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
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
        Schema::dropIfExists('wh_doc_type');
        Schema::enableForeignKeyConstraints();
    }
}
