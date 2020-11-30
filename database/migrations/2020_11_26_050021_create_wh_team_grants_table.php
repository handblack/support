<?php

use App\Models\WhTeamGrant;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateWhTeamGrantsTable extends Migration{
    public function up(){
        Schema::create('wh_team_grants', function (Blueprint $table) {
            $table->id();
            $table->string('name',100)->nullable();
            $table->string('module',100);
            $table->string('url',200)->nullable();
            $table->foreignId('team_id');
            $table->enum('isgrant',['Y','N'])->default('N');
            $table->enum('iscreate',['Y','N'])->default('N');
            $table->enum('isread',['Y','N'])->default('N');
            $table->enum('isupdate',['Y','N'])->default('N');
            $table->enum('isdelete',['Y','N'])->default('N');
            $table->enum('isactive',['Y','N'])->default('N');
            $table->timestamps();
        }); 
        $grant = new WhTeamGrant();
        $grant->create(['name'=>'','team_id'=>1,'module' => 'system.user']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'system.team']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'system.team.line']);

        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.bpartner']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product.line']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product.subline']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product.family']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product.barcode']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'master.product.reason']);

        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.input']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.input.line']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.output']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.output.line']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.transfer']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.transfer.line']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.production']);
        $grant->create(['name'=>'','team_id'=>1,'module' => 'move.production.line']);
         
    }

    public function down(){
        Schema::dropIfExists('wh_team_grants');
    }
}
