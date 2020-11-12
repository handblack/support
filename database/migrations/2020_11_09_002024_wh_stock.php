<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

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
            $table->double('stock',15,6)->default(0);
            $table->foreignId('product_id')
                ->nullable()
                ->references('id')
                ->on('wh_products');

            $table->foreignId('warehouse_id')
                ->nullable()
                ->references('id')
                ->on('wh_warehouses');
            //$table->unique('product_id', 'warehouse_id');
            $table->timestamps();
        });
        DB::statement('ALTER TABLE `db_almacen`.`wh_stock`  ADD UNIQUE INDEX `warehouse_id` (`product_id`, `warehouse_id`)');
        DB::unprepared("
        CREATE TRIGGER tr_add_stock_in_live AFTER INSERT ON `wh_minput_lines` FOR EACH ROW
            BEGIN 
                CALL sp_stock_live_proccess('I',NEW.id);
            END
        ");
        DB::unprepared("
        CREATE TRIGGER tr_rest_stock_in_live AFTER INSERT ON `wh_moutput_lines` FOR EACH ROW
            BEGIN 
                CALL sp_stock_live_proccess('O',NEW.id);
            END
        ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::unprepared('DROP TRIGGER `tr_add_stock_in_live`');
        DB::unprepared('DROP TRIGGER `tr_rest_stock_in_live`');
        Schema::dropIfExists('wh_stock');
    }
}
