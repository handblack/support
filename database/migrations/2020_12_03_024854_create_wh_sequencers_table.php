<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhSequencersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_sequencers', function (Blueprint $table) {
            $table->id();
            $table->string('sequencername',50);
            $table->string('serial',10);
            $table->bigInteger('lastnumber')->default(0);
            $table->foreignId('doctype_id');
            $table->enum('isfex',['Y','N'])->default('N');
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
        Schema::dropIfExists('wh_sequencers');
        Schema::enableForeignKeyConstraints();
    }
}
