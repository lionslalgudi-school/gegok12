<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Seeder;

class SchoolsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('schools')->Insert([
            'id'           =>  '1',
            'name'         =>  'Lions School',
            'email'        =>  'lionslalgudi1968@gmail.com',
            'phone'        =>  '8973848423',
            'status'       =>  '1',
            'slug'         =>  'lions-school',
            'created_at'   =>   date("Y-m-d H:i:s"),
            'updated_at'   =>   date("Y-m-d H:i:s"),
        ]);


        // DB::table('schools')->Insert([
        //     'id'           =>  '2',
        //     'name'         =>  'Model School Two',
        //     'email'        =>  'modelschool2@gegok12.com',
        //     'phone'        =>  '8999911112',
        //     'status'       =>  '1',
        //     'slug'         =>  'model-school-two',
        //     'created_at'   =>   date("Y-m-d H:i:s"),
        //     'updated_at'   =>   date("Y-m-d H:i:s"),
        // ]);
    }
}