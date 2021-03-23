<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhProductBarcodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_product_barcodes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->references('id')->on('wh_products');
            $table->string('barcode',50)->nullable();
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
        Schema::dropIfExists('wh_product_barcodes');
        Schema::enableForeignKeyConstraints();
    }
}
