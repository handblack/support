<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhPosConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_pos_configs', function (Blueprint $table) {
            $table->id();
            $table->string('posname',80);
            $table->foreignId('sequencer_id')->references('id')->on('wh_sequencers')->nullable();
            $table->foreignId('warehouse_id')->references('id')->on('wh_warehouses')->nullable();
            $table->unsignedBigInteger('bpartner_id')->nullable();
            $table->enum('ismovestock',['Y','N'])->default('Y');
            $table->enum('iscreateproduct',['Y','N'])->default('N');
            $table->enum('iscreatebpartner',['Y','N'])->default('N');
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::table('wh_pos_configs', function (Blueprint $table) {
            #$table->unsignedBigInteger('warehouse_id');
            #$table->foreign('warehouse_id')->references('id')->on('wh_warehouses');
            
            #$table->unsignedBigInteger('sequencer_id');
            
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
        Schema::dropIfExists('wh_pos_configs');
        Schema::enableForeignKeyConstraints();
    }
}
