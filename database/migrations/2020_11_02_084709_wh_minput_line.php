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
            $table->double('qty',15,6)->nullable();
            $table->double('price',15,6)->nullable()->default(0);
            $table->double('pack',15,6)->nullable();
            $table->double('grandline',15,6)->nullable();
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
        Schema::dropIfExists('wh_minput_lines');
        Schema::enableForeignKeyConstraints();
    }
}
