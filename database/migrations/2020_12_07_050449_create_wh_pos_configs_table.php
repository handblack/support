<?php

use App\Models\WhPosConfig;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWhPosConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_pos_configs', function (Blueprint $table) {
            $table->id();
            $table->string('posname',80);
            $table->foreignId('currency_id')->references('id')->on('wh_currency');
            $table->unsignedBigInteger('sequencer_fac_id')->nullable();
            $table->unsignedBigInteger('sequencer_bve_id')->nullable();
            $table->unsignedBigInteger('sequencer_ndb_id')->nullable();
            $table->unsignedBigInteger('sequencer_ncr_id')->nullable();
            $table->unsignedBigInteger('sequencer_who_id')->nullable();
            #$table->foreignId('sequencer_fac_id')->references('id')->on('wh_sequencers')->nullable();
            #$table->foreignId('sequencer_bve_id')->references('id')->on('wh_sequencers')->nullable();
            #$table->foreignId('sequencer_ndb_id')->references('id')->on('wh_sequencers')->nullable();
            #$table->foreignId('sequencer_ncr_id')->references('id')->on('wh_sequencers')->nullable();
            #$table->foreignId('sequencer_who_id')->references('id')->on('wh_sequencers')->nullable();

            $table->foreignId('warehouse_id')->references('id')->on('wh_warehouses')->nullable();
            $table->unsignedBigInteger('bpartner_id')->nullable();
            $table->enum('ismovestock',['Y','N'])->default('Y');
            $table->enum('iscreateproduct',['Y','N'])->default('N');
            $table->enum('iscreatebpartner',['Y','N'])->default('N');
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->timestamps();
        });
        /*
        $row = new WhPosConfig();
        $row->create(
            'currency_id' => 1,
            'warehouse_id' =>  
        );
        */
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('wh_pos_configs');
        Schema::enableForeignKeyConstraints();
    }
}
