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
            $table->string('shortname',100)->nullable();
            $table->string('documentno',15)->nullable();
            $table->enum('bpartnertype',['C','P'])->default('C');
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->double('creditline',15,6)->nullable()->default(0);
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unique(['bpartnertype','bpartnercode']);
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
        Schema::dropIfExists('wh_bpartners');
        Schema::enableForeignKeyConstraints();
    }
}
