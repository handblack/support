<?php

use App\Models\Team;
use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wh_users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->foreignId('current_team_id')->nullable();
            $table->text('profile_photo_path')->nullable();
            $table->enum('isadmin',['Y','N'])->default('N');
            $table->enum('isactive',['Y','N'])->default('Y');
            $table->timestamps();
        });
        
        $user = new User();
        $user->name = 'admin';
        $user->email = 'soporte@miasoftware.net';
        $user->password = Hash::make('x5w93kra'); //$2y$10$aFV2AmoRLcra8vPXUt9awOi6xcCzevl4FEsRmzl0hTcWl.slB3Gw6
        $user->isadmin = 'Y';
        $user->current_team_id = 1;
        $user->save();        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wh_users');
    }
}
