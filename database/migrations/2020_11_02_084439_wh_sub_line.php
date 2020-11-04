<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhSubLine extends Migration
{
    public function up(){
        Schema::create('wh_sublines', function (Blueprint $table) {
            $table->id();
            $table->string('sublinename',200);
            $table->enum('isactive',['Y','N']);
            $table->timestamps();
        });
    }

    public function down(){
        Schema::dropIfExists('wh_sublines');
    }
}
