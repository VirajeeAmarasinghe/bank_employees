<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('employees')->insert([
            'emp_name'=>'Virajee Amarasinghe',
            'emp_email'=>'virajee.hiranthika@gmail.com',
            'emp_photo'=>'virajee.jpg',
            'emp_address'=>'Kudagama,Hureemaluwa,Rambukkana',
            'password'=>Hash::make('123456'),
            'branch_id'=>1
        ]);

        DB::table('employees')->insert([
            'emp_name'=>'Ruvindu Amarasinghe',
            'emp_email'=>'ruvindu.amarasinghe@gmail.com',
            'emp_photo'=>'ruvindu.jpg',
            'emp_address'=>'Kudagama,Hureemaluwa,Rambukkana',
            'password'=>Hash::make('123456'),
            'branch_id'=>2
        ]);

        DB::table('employees')->insert([
            'emp_name'=>'Sandunika Dunukewatta',
            'emp_email'=>'sandunika.dunukewatta@gmail.com',
            'emp_photo'=>'sandunika.jpg',
            'emp_address'=>'Hureemaluwa,Rambukkana',
            'password'=>Hash::make('123456'),
            'branch_id'=>3
        ]);

        DB::table('employees')->insert([
            'emp_name'=>'Malani Weerasinghe',
            'emp_email'=>'malani.weerasinghe@gmail.com',
            'emp_photo'=>'weerasinghe.jpg',
            'emp_address'=>'Kudagama,Hureemaluwa,Rambukkana',
            'password'=>Hash::make('123456'),
            'branch_id'=>4
        ]);

        DB::table('employees')->insert([
            'emp_name'=>'H.R.Amarasinghe',
            'emp_email'=>'h.r.amarasinghe@gmail.com',
            'emp_photo'=>'amarasinghe.jpg',
            'emp_address'=>'Kudagama,Hureemaluwa,Rambukkana',
            'password'=>Hash::make('123456'),
            'branch_id'=>5
        ]);
    }
}
