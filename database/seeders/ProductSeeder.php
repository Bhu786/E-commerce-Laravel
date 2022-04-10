<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
            'name'=>'Hubba Bubba Bubble Gum',
            'price'=>'RS. 250.00',
            'description'=>'Hubba Bubba Bubble Gum 100g',
            'category'=>'Bubble Gum',
            'gallery'=>'img/bubble_gum_1.jpg'
            ],
            [
            'name'=>'Strawberry Jujubes',
            'price'=>'RS. 350.00',
            'description'=>'Sri Lankan Jujubes 100g.These are real wonder perfect candies, soft ,chewy and essenced.',
            'category'=>'Jujubes',
            'gallery'=>'img/jujubes.jpg'
            ],
            [
                'name'=>'Chocolate Peanuts',
            'price'=>'RS. 500.00',
            'description'=>'Snack on a chocolate-covered classic with chocolate peanuts from SWEETY. We blanket our fresh-roasted peanuts in fine milk chocolate.',
            'category'=>'Chocolate Peanuts',
            'gallery'=>'img/chocolate_Peanuts.jpg'
            ],
            [
                'name'=>'Red Boondi',
            'price'=>'RS. 100.00',
            'description'=>'The sweetest boondi is the red one, the tastiest, largest, sweetest honey boondi.',
            'category'=>'Boondi',
            'gallery'=>'img/boondi_red.jpg'
            ]
        ]);
    }
}
