<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhMinputLine extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_minput_lines', function (Blueprint $table) {
            $table->id();
            $table->foreignId('minput_id')
                ->nullable()
                ->references('id')
                ->on('wh_minputs')
                ->constrained()
                ->onDelete('SET NULL');
            $table->foreignId('product_id')
                ->nullable()
                ->references('id')
                ->on('wh_products');
            $table->float('qty')->nullable();
            $table->float('price')->nullable()->default(0);
            $table->float('pack')->nullable();
            $table->float('grandline')->nullable();
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
        Schema::dropIfExists('wh_minput_lines');
    }
}
