<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class WhParam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_param', function (Blueprint $table) {
            $table->id();
            $table->string('identity',100);
            $table->string('value',200)->nullable();
            $table->string('value1',200)->nullable();
            $table->string('value2',200)->nullable();
            $table->string('value3',200)->nullable();
            $table->bigInteger('id1')->nullable();
            $table->bigInteger('id2')->nullable();
            $table->bigInteger('id3')->nullable();
            $table->bigInteger('group_id')->nullable();
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->timestamps();
        });
        DB::unprepared("CALL installx()");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wh_param');
    }
}
