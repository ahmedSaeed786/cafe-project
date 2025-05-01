<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use App\Models\User;
use Hash;

class userSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        // Cricket
        $circket_edit = Permission::create(['name'=>'Cricket.Edit']);
        $circket_add = Permission::create(['name'=>'Cricket.Add']);
        $circket_show = Permission::create(['name'=>'Cricket.Show']);
        $circket_delete = Permission::create(['name'=>'Cricket.Delete']);
        // Futsal
        $futsal_edit = Permission::create(['name'=>'Futsal.Edit']);
        $futsal_add = Permission::create(['name'=>'Futsal.Add']);
        $futsal_show = Permission::create(['name'=>'Futsal.Show']);
        $futsal_delete = Permission::create(['name'=>'Futsal.Delete']);

        // PaintBall
        $paintball_edit = Permission::create(['name'=>'Paintball.Edit']);
        $paintball_add = Permission::create(['name'=>'Paintball.Add']);
        $paintball_show = Permission::create(['name'=>'Paintball.Show']);
        $paintball_delete = Permission::create(['name'=>'Paintball.Delete']);
        // GelBlaster
        $gelblaster_edit = Permission::create(['name'=>'Gelblaster.Edit']);
        $gelblaster_add = Permission::create(['name'=>'Gelblaster.Add']);
        $gelblaster_show = Permission::create(['name'=>'Gelblaster.Show']);
        $gelblaster_delete = Permission::create(['name'=>'Gelblaster.Delete']);
        // Badminton
        $badminton_edit = Permission::create(['name'=>'Badminton.Edit']);
        $badminton_add = Permission::create(['name'=>'Badminton.Add']);
        $badminton_show = Permission::create(['name'=>'Badminton.Show']);
        $badminton_delete = Permission::create(['name'=>'Badminton.Delete']);



        $user_accounts = Permission::create(['name'=>'Accounts']);
        $user_reports = Permission::create(['name'=>'Reports']);
        $user_pay_slip = Permission::create(['name'=>'Pay Slip']);
        $user_ledger = Permission::create(['name'=>'Ledger']);
        $user_enteries = Permission::create(['name'=>'Enteries']);
        $user_checkbook = Permission::create(['name'=>'Check Book']);
        $user_user = Permission::create(['name'=>'User']);

        $role_admin = Role::create(['name' => 'Admin']);
      



        $role_admin->givePermissionTo([
            $user_accounts,
            $user_reports,
            $circket_edit,
            $user_ledger,
            $user_pay_slip,
            $user_pay_slip,
            $user_user,
            $user_checkbook,

            $circket_edit,
            $circket_add,
            $circket_show,
            $circket_delete,
            $futsal_edit,
            $futsal_add,
            $futsal_show,
            $futsal_delete,
            $paintball_edit,
            $paintball_add,
            $paintball_show,
            $paintball_delete,
            $gelblaster_edit,
            $gelblaster_add,
            $gelblaster_show,
            $gelblaster_delete,
            $badminton_edit,
            $badminton_add,
            $badminton_show,
            $badminton_delete,

        ]);

        $admin = User::create([
            'name' => 'Umer Shaikh',
            'email' => 'umershaikh1@gmail.com',
            'password' => Hash::make('admin123')
        ]);
        
        $admin->assignRole($role_admin);


       
        $admin->givePermissionTo([
          $user_accounts,
            $user_reports,
            $circket_edit,
            $user_ledger,
            $user_pay_slip,
            $user_pay_slip,
            $user_user,
            $user_checkbook,
            
            $circket_edit,
            $circket_add,
            $circket_show,
            $circket_delete,
            $futsal_edit,
            $futsal_add,
            $futsal_show,
            $futsal_delete,
            $paintball_edit,
            $paintball_add,
            $paintball_show,
            $paintball_delete,
            $gelblaster_edit,
            $gelblaster_add,
            $gelblaster_show,
            $gelblaster_delete,
            $badminton_edit,
            $badminton_add,
            $badminton_show,
            $badminton_delete,
        ]);
        


        
       
        $user = User::create([
            'name' => 'Ahmed',
            'email' => 'ahmed1@gmail.com',
            'password' => Hash::make('admin123')
        ]);
       
  $role_user = Role::create(['name' => 'User']);
      



        $role_admin->givePermissionTo([
         
            $user_reports
            
        ]);

        $user = User::create([
            'name' => 'Ahmed',
            'email' => 'user@gmail.com',
            'password' => Hash::make('admin123')
        ]);
        
        $user->assignRole($role_user);


       
        $user->givePermissionTo([
           
            $circket_edit
            
        ]);
        
    }
}
