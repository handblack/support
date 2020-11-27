<?php

use App\Models\Team;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_teams', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->index();
            $table->string('name');
            $table->boolean('personal_team');
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->timestamps();
        });
        $team = new Team();
        $team->user_id = 1;
        $team->name = 'Administradores';
        $team->personal_team = 1;
        $team->save();
        $team = new Team();
        $team->user_id = 1;
        $team->name = 'Supervisores';
        $team->personal_team = 1;
        $team->save();
        /*
        $team->create([
            'user_id' => 1,
            'name' => 'Administradores',
            'personal_team' => 1
        ]);
        $team->create([
            'user_id' => 1,
            'name' => 'Supervisores',
            'personal_team' => 1
        ]);
        $team->create([
            'user_id' => 1,
            'name' => 'Compras',
            'personal_team' => 1
        ]);
        $team->create([
            'user_id' => 1,
            'name' => 'Ventas',
            'personal_team' => 1
        ]);
        */

        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('wh_teams');
    }
}
