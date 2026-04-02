<?php

namespace Database\Seeders;

use App\Models\Show;
use Illuminate\Database\Seeder;

class ShowSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Array of shows to seed into the database
        $shows = [
            ['name' => 'Adventure Time', 'slug' => 'adventure-time', 'year' => 2010, 'description' => 'A boy and his magical dog go on adventures in the post-apocalyptic Land of Ooo.', 'poster_image' => 'images/shows/AdventureTime_Wallpaper.jpeg'],
            ['name' => 'We Bare Bears', 'slug' => 'we-bare-bears', 'year' => 2015, 'description' => 'Three bear brothers try to fit in with modern human society in San Francisco.', 'poster_image' => 'images/shows/WeBareBears.jpg'],
            ['name' => 'The Powerpuff Girls', 'slug' => 'powerpuff-girls', 'year' => 1998, 'description' => 'Three super-powered little girls fight crime and protect Townsville.', 'poster_image' => 'images/shows/PowerpuffGirls.png'],
            ['name' => 'DreamWorks Dragons', 'slug' => 'dreamworks-dragons', 'year' => 2012, 'description' => 'Hiccup and Toothless defend their Viking village from threats on the island of Berk.', 'poster_image' => 'images/shows/Dreamworks_Dragons.jpeg'],
            ['name' => 'Sonic Boom', 'slug' => 'sonic-boom', 'year' => 2014, 'description' => 'Sonic and his friends protect their island village from the villainous Dr. Eggman.', 'poster_image' => 'images/shows/SonicBoom.jpeg'],
            ['name' => 'Peanuts by Schulz', 'slug' => 'peanuts', 'year' => 1965, 'description' => 'Charlie Brown and his friends navigate everyday life with humor and heart.', 'poster_image' => 'images/shows/PeanutsBySchulz.jpg'],
            ['name' => 'The Secret Saturdays', 'slug' => 'secret-saturdays', 'year' => 2008, 'description' => 'A family of cryptozoologists work to keep dangerous cryptid secrets from the world.', 'poster_image' => 'images/shows/thesecretsaturdaysposter.jpg'],
            ['name' => 'Pink Panther and Pals', 'slug' => 'pink-panther-and-pals', 'year' => 2010, 'description' => 'The iconic Pink Panther stars in a series of comedic animated shorts.', 'poster_image' => 'images/shows/PinkPantherPoster.jpg'],
            ['name' => 'Lucas the Spider', 'slug' => 'lucas-the-spider', 'year' => 2018, 'description' => 'A tiny jumping spider named Lucas explores the world with curiosity and wonder.', 'poster_image' => 'images/shows/Lucasthespider.jpg'],
            ['name' => 'Regular Show', 'slug' => 'regular-show', 'year' => 2010, 'description' => 'Two slacker groundskeepers at a park constantly find themselves in surreal situations.', 'poster_image' => 'images/shows/RegularShow.png'],
        ];

        // Loop through each show and create a record in the database
        foreach ($shows as $show) {
            Show::create($show);
        }
    }
}