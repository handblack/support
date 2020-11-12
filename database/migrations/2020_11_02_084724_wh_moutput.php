<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WhMoutput extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_moutputs', function (Blueprint $table) {
            $table->id();
            $table->date('datetrx');
            $table->string('token',50);
            $table->foreignId('reason_id')->nullable();
            $table->foreignId('bpartner_id')->nullable();
            $table->foreignId('warehouse_id')->nullable();
            $table->foreignId('currency_id')->nullable();
            $table->double('grandqty',15,6)->nullable()->default(0);
            $table->double('grandamount',15,6)->nullable()->default(0);
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
        Schema::dropIfExists('wh_moutputs');
    }
}
