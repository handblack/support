<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhProduct extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        /*
        Schema::create('wh_products', function (Blueprint $table) {
            $table->id();
            $table->string('productname',200);
            $table->string('productcode',20);
            $table->string('shortname',80)->nullable();
            $table->string('sku',20)->nullable();
            $table->string('ean',20)->nullable();
            $table->enum('isactive',['Y','N']);
            $table->foreignId('line_id')->nullable();
            $table->foreignId('subline_id')->nullable();
            $table->foreignId('family_id')->nullable();
            $table->foreignId('um_id')->nullable();
            //$table->foreignId('current_team_id')->nullable();
            $table->timestamps();
        });
        */
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        //Schema::dropIfExists('wh_products');
    }
}
