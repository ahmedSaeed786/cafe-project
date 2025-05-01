<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Hash;
use App\Models\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $permmission_dashboard = Permission::create(['name'=>'Dashboard']);
        $permmission_item = Permission::create(['name'=>'item']);
        $permmission_order = Permission::create(['name'=>'Order']);
        $permmission_user = Permission::create(['name'=>'User']);
        $permmission_setting = Permission::create(['name'=>'Setting']);
        $permmission_Expense = Permission::create(['name'=>'Expense']);
        $permmission_Calender = Permission::create(['name'=>'Calender']);
     

        $role_admin = Role::create(['name' => 'Admin']);
      



        $role_admin->givePermissionTo([
            $permmission_dashboard,
            $permmission_item,
            $permmission_order,
            $permmission_user,
            $permmission_setting,
            $permmission_Expense,
            $permmission_Calender,
           
        ]);

        $admin = User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin123')
        ]);
        
        $admin->assignRole($role_admin);


       
        $admin->givePermissionTo([
            $permmission_dashboard,
            $permmission_item,
            $permmission_order,
            $permmission_user,
            $permmission_setting,
            $permmission_Expense,
            $permmission_Calender,
        ]);
        


        
       

       
  $role_admin = Role::create(['name' => 'User']);
      



        $role_admin->givePermissionTo([
         
            $permmission_order,
            
        ]);

        $user = User::create([
            'name' => 'Ahmed',
            'email' => 'user@gmail.com',
            'password' => Hash::make('admin123')
        ]);
        
        $user->assignRole($role_admin);


       
        $user->givePermissionTo([
           
            $permmission_order,
            
        ]);
        


       
       
    }
}
