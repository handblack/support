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
            $table->date('datetrx')->nullable();
            $table->bigInteger('warehouse_id')->nullable();
            $table->bigInteger('reason_id')->nullable();
            $table->bigInteger('bpartner_id')->nullable();
            $table->bigInteger('product_id')->nullable();
            $table->float('qty')->nullable();
            $table->bigInteger('um_id')->nullable();
            $table->enum('isactive',['Y','N'])->default('Y');
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
