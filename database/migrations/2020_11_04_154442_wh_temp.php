<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhTemp extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_temp', function (Blueprint $table) {
            $table->id();
            $table->string('token',60);
            $table->string('productname',100);
            $table->string('productcode',20);
            $table->string('umname',20)->nullable();
            $table->string('umshort',10)->nullable();
            $table->string('sku',20)->nullable();
            $table->date('datetrx')->nullable();
            $table->bigInteger('warehouse_id')->nullable();
            $table->bigInteger('reason_id')->nullable();
            $table->bigInteger('bpartner_id')->nullable();
            $table->bigInteger('product_id')->nullable();
            $table->double('qty',15,6)->nullable();
            $table->double('price',15,6)->nullable();
            $table->double('pack',15,6)->nullable();
            $table->double('grandline',15,6)->nullable();
            $table->bigInteger('um_id')->nullable();
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
        Schema::dropIfExists('wh_temp');
    }
}
