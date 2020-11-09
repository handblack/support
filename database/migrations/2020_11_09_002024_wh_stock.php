<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhStock extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('wh_stock', function (Blueprint $table) {
            $table->id();
            $table->float('stock',60);
            $table->foreignId('product_id')
                ->nullable()
                ->references('id')
                ->on('wh_products');

            $table->foreignId('warehouse_id')
                ->nullable()
                ->references('id')
                ->on('wh_warehouses');
            $table->unique('product_id', 'warehouse_id');
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
        Schema::dropIfExists('wh_stock');
    }
}
