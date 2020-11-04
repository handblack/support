<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhMinput extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_minputs', function (Blueprint $table) {
            $table->id();
            $table->date('datetrx');
            $table->foreignId('reason_id')->nullable();
            $table->foreignId('bpartner_id')->nullable();
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
        Schema::dropIfExists('wh_minputs');
    }
}
