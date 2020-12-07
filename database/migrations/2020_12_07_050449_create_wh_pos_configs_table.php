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
            $table->foreignId('sequencer_id');
            $table->foreignId('warehouse_id');
            $table->enum('ismovestock',['Y','N'])->default('Y');
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
        Schema::dropIfExists('wh_pos_configs');
        Schema::enableForeignKeyConstraints();
    }
}
