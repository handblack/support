<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_invoice', function (Blueprint $table) {
            $table->id();
            $table->string('token',50);
            $table->foreignId('sequencer_id')
                ->references('id')
                ->on('wh_sequencers');
            $table->foreignId('bpartner_id')
                ->references('id')
                ->on('wh_bpartners');
            $table->foreignId('currency_id')
                ->references('id')
                ->on('wh_currency');
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
        Schema::dropIfExists('wh_invoice');
        Schema::enableForeignKeyConstraints();
    }
}
