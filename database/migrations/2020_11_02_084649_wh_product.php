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
    public function up(){
        Schema::create('wh_products', function (Blueprint $table) {
            $table->id();
            $table->string('productcode',20);
            $table->string('productname',200);
            $table->string('shortname',80)->nullable();
            $table->string('sku',20)->nullable();
            $table->string('ean',20)->nullable();
            $table->enum('isactive',['Y','N']);
            $table->foreignId('line_id')
                ->nullable()
                ->references('id')
                ->on('wh_lines');
            $table->foreignId('subline_id')
                ->nullable()
                ->references('id')
                ->on('wh_sublines');
            $table->foreignId('family_id')
                ->nullable()
                ->references('id')
                ->on('wh_families');
            $table->foreignId('um_id')->nullable();
            $table->double('stk_min',15,6)->default(0);
            $table->double('stk_max',15,6)->default(0);
            $table->unique('productcode');
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
    public function down(){
       
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('wh_products');
        Schema::enableForeignKeyConstraints();
   
    }
}
