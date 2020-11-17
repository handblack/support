<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhLine extends Migration{

    public function up(){
        Schema::create('wh_lines', function (Blueprint $table) {
            $table->id();
            $table->string('linename',200);
            $table->enum('isactive',['Y','N']);
            $table->timestamps();
        });
    }

    public function down(){
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('wh_lines');
        Schema::enableForeignKeyConstraints();
    }
}
