<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhMoutputLine extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_moutput_lines', function (Blueprint $table) {
            $table->id();
            $table->foreignId('moutput_id')
                ->nullable()
                ->references('id')
                ->on('wh_moutputs')
                ->constrained()
                ->onDelete('SET NULL');
            $table->foreignId('product_id')
                ->nullable()
                ->references('id')
                ->on('wh_products');
            $table->float('qty')->nullable();
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
        Schema::dropIfExists('wh_moutput_lines');
    }
}
