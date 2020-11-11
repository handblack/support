<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class BankReceived extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_bank_received', function (Blueprint $table) {
            $table->id();
            $table->date('datetrx');
            $table->double('amount')->nullable();
            $table->double('exchange')->nullable()->default(1)->unsigned();
            $table->foreignId('bpartner_id')
                ->nullable()
                ->references('id')
                ->on('wh_bpartners');
            $table->foreignId('currency_id')
                ->nullable()
                ->references('id')
                ->on('wh_currency');
            $table->foreignId('bank_id')
                ->nullable()
                ->references('id')
                ->on('wh_banks');
            $table->string('doctype',3); //EFE - DEP - TRA - CHE 
            $table->string('documentno',20)->nullable();
            $table->string('office',50)->nullable();
            $table->string('observation',100)->nullable();
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
        Schema::dropIfExists('wh_bank_received');
        Schema::enableForeignKeyConstraints();
    }
}
