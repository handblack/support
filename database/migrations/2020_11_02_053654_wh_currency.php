<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhCurrency extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::create('wh_currency', function (Blueprint $table) {
            $table->id();
            $table->string('currencyname',05);
            $table->string('isoname',5);
            $table->string('prefix',5)->nullable();
            $table->string('suffix',5)->nullable();
            $table->string('symbol',5)->nullable();
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
        Schema::dropIfExists('wh_currency');
        Schema::enableForeignKeyConstraints();
    }
}
