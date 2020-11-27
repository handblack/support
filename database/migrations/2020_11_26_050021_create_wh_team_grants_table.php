<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhTeamGrantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_team_grants', function (Blueprint $table) {
            $table->id();
            $table->string('identity',100);
            $table->string('module',100);
            $table->string('url',200);
            $table->enum('isgrant',['Y','N'])->default('N');
            $table->enum('iscreate',['Y','N'])->default('N');
            $table->enum('isread',['Y','N'])->default('N');
            $table->enum('isupdate',['Y','N'])->default('N');
            $table->enum('isdelete',['Y','N'])->default('N');
            $table->enum('isactive',['Y','N'])->default('N');
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
        Schema::dropIfExists('wh_team_grants');
    }
}
