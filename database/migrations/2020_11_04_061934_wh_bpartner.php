<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhBpartner extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_bpartners', function (Blueprint $table) {
            $table->id();
            $table->string('bpartnername',200);
            $table->string('bpartnercode',20);
            $table->string('documentno',15);
            $table->enum('isactive',['Y','N'])->default('Y');
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
        Schema::dropIfExists('wh_bpartners');
    }
}
