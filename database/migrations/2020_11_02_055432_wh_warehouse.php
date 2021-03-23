<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhWarehouse extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_warehouses', function (Blueprint $table) {
            $table->id();
            $table->string('warehousename',100);
            $table->string('warehousecode',50)->nullable();
            $table->string('ubigeo',10)->nullable();
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
        Schema::dropIfExists('wh_warehouses');
    }
}
