<?php

namespace Database\Seeders;

use App\Models\WhRole;
use Illuminate\Database\Seeder;

class SeederRole extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role = new WhRole();
        $role->name = 'admin';
        $role->description = 'Administrator';
        $role->save();
        $role = new WhRole();
        $role->name = 'user';
        $role->description = 'User';
        $role->save();
        $role = new WhRole();
        $role->name = 'bpartner';
        $role->description = 'Clientes';
        $role->save();
    }
}
