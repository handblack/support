<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhTransfer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_transfers', function (Blueprint $table) {
            $table->id();
            $table->date('datetrx');
            $table->foreignId('warehouse_id')
                ->nullable()
                ->references('id')
                ->on('wh_warehouses');
                /*
            $table->foreignId('warehouse_to')
                ->nullable()
                ->references('id')
                ->on('wh_warehouses');
                */
            $table->foreignId('reason_id');
                
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
        Schema::dropIfExists('wh_transfers');
    }
}
