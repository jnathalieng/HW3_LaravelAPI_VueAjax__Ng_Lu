<?php

namespace Database\Seeders;

use App\Models\Character;
use App\Models\Show;
use Illuminate\Database\Seeder;

class CharacterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Array of characters to seed, referenced by show name
        $characters = [
            // Adventure Time
            ['name' => 'Finn the Human', 'type' => 'hero', 'description' => 'A brave human boy who loves adventure and helping others.', 'character_image' => 'images/characters/Finn.png', 'show' => 'Adventure Time'],
            ['name' => 'Jake the Dog', 'type' => 'hero', 'description' => 'A magical dog with the ability to stretch and shape-shift.', 'character_image' => 'images/characters/Jakethedog.png', 'show' => 'Adventure Time'],
            ['name' => 'Princess Bubblegum', 'type' => 'side', 'description' => 'The ruler of the Candy Kingdom and a brilliant scientist.', 'character_image' => 'images/characters/PrinBG.png', 'show' => 'Adventure Time'],
            ['name' => 'Ice King', 'type' => 'villain', 'description' => 'A lonely wizard who kidnaps princesses using his ice powers.', 'character_image' => 'images/characters/Iceking.png', 'show' => 'Adventure Time'],
            // We Bare Bears
            ['name' => 'Grizzly Bear', 'type' => 'hero', 'description' => 'The oldest bear brother, outgoing and enthusiastic.', 'character_image' => 'images/characters/GrizzlyBear.png', 'show' => 'We Bare Bears'],
            ['name' => 'Panda Bear', 'type' => 'hero', 'description' => 'The middle brother, sensitive and obsessed with his phone.', 'character_image' => 'images/characters/PandaBear.png', 'show' => 'We Bare Bears'],
            ['name' => 'Ice Bear', 'type' => 'hero', 'description' => 'The youngest brother, quiet and surprisingly skilled at everything.', 'character_image' => 'images/characters/IceBear.png', 'show' => 'We Bare Bears'],
            ['name' => 'Chloe Park', 'type' => 'side', 'description' => 'A child prodigy and close friend of the bear brothers.', 'character_image' => 'images/characters/ChloePark.png', 'show' => 'We Bare Bears'],
            // The Powerpuff Girls
            ['name' => 'Blossom', 'type' => 'hero', 'description' => 'The leader of the Powerpuff Girls, smart and composed.', 'character_image' => 'images/characters/Blossom.png', 'show' => 'The Powerpuff Girls'],
            ['name' => 'Bubbles', 'type' => 'hero', 'description' => 'The sweet and sensitive Powerpuff Girl who loves animals.', 'character_image' => 'images/characters/Bubbles.png', 'show' => 'The Powerpuff Girls'],
            ['name' => 'Buttercup', 'type' => 'hero', 'description' => 'The toughest Powerpuff Girl, aggressive and fearless.', 'character_image' => 'images/characters/Buttercup.png', 'show' => 'The Powerpuff Girls'],
            ['name' => 'Mojo Jojo', 'type' => 'villain', 'description' => 'An evil genius chimpanzee and the main enemy of the Powerpuff Girls.', 'character_image' => 'images/characters/MojoJojo.png', 'show' => 'The Powerpuff Girls'],
            // DreamWorks Dragons
            ['name' => 'Hiccup', 'type' => 'hero', 'description' => 'A young Viking who forms a bond with a dragon named Toothless.', 'character_image' => 'images/characters/Hiccup.png', 'show' => 'DreamWorks Dragons'],
            ['name' => 'Toothless', 'type' => 'hero', 'description' => 'A rare Night Fury dragon and Hiccups loyal companion.', 'character_image' => 'images/characters/Toothless.png', 'show' => 'DreamWorks Dragons'],
            ['name' => 'Astrid', 'type' => 'hero', 'description' => 'A fierce Viking warrior and Hiccups closest ally.', 'character_image' => 'images/characters/Astrid.png', 'show' => 'DreamWorks Dragons'],
            ['name' => 'Gobber', 'type' => 'side', 'description' => 'The village blacksmith and Hiccups mentor.', 'character_image' => 'images/characters/Gobber.png', 'show' => 'DreamWorks Dragons'],
            // Sonic Boom
            ['name' => 'Sonic', 'type' => 'hero', 'description' => 'The fastest hedgehog alive who protects his island from Eggman.', 'character_image' => 'images/characters/Sonic.png', 'show' => 'Sonic Boom'],
            ['name' => 'Tails', 'type' => 'hero', 'description' => 'A two-tailed fox genius inventor and Sonics best friend.', 'character_image' => 'images/characters/Tails.png', 'show' => 'Sonic Boom'],
            ['name' => 'Amy Rose', 'type' => 'side', 'description' => 'An enthusiastic hedgehog who is part of Sonics team.', 'character_image' => 'images/characters/AmyRose.png', 'show' => 'Sonic Boom'],
            ['name' => 'Knuckles', 'type' => 'hero', 'description' => 'A strong echidna who guards the Master Emerald.', 'character_image' => 'images/characters/Knuckles.png', 'show' => 'Sonic Boom'],
            // Peanuts by Schulz
            ['name' => 'Charlie Brown', 'type' => 'hero', 'description' => 'A lovable, good-natured boy who always tries his best despite bad luck.', 'character_image' => 'images/characters/CharlieBrown.png', 'show' => 'Peanuts by Schulz'],
            ['name' => 'Snoopy', 'type' => 'hero', 'description' => 'Charlies imaginative beagle with a rich fantasy life.', 'character_image' => 'images/characters/Snoopy.png', 'show' => 'Peanuts by Schulz'],
            ['name' => 'Lucy van Pelt', 'type' => 'side', 'description' => 'A bossy and opinionated girl who runs a psychiatric booth.', 'character_image' => 'images/characters/Lucy.png', 'show' => 'Peanuts by Schulz'],
            ['name' => 'Linus van Pelt', 'type' => 'side', 'description' => 'Lucys younger brother, philosophical and inseparable from his blanket.', 'character_image' => 'images/characters/Linus.png', 'show' => 'Peanuts by Schulz'],
            // The Secret Saturdays
            ['name' => 'Zak Saturday', 'type' => 'hero', 'description' => 'A boy with the ability to control cryptids using his special claw weapon.', 'character_image' => 'images/characters/ZakSaturday.png', 'show' => 'The Secret Saturdays'],
            ['name' => 'Doc Saturday', 'type' => 'hero', 'description' => 'Zaks father and a brilliant cryptozoologist.', 'character_image' => 'images/characters/DocSaturday.png', 'show' => 'The Secret Saturdays'],
            ['name' => 'Drew Saturday', 'type' => 'hero', 'description' => 'Zaks mother, an expert fighter and cryptid researcher.', 'character_image' => 'images/characters/DrewSaturday.png', 'show' => 'The Secret Saturdays'],
            ['name' => 'V.V. Argost', 'type' => 'villain', 'description' => 'A sinister TV host who seeks to control all cryptids.', 'character_image' => 'images/characters/V.V.png', 'show' => 'The Secret Saturdays'],
            // Pink Panther and Pals
            ['name' => 'Pink Panther', 'type' => 'hero', 'description' => 'A cool and stylish pink panther who always outsmarts his rivals.', 'character_image' => 'images/characters/PinkPanther.png', 'show' => 'Pink Panther and Pals'],
            ['name' => 'Big Nose', 'type' => 'side', 'description' => 'A bumbling inspector who often clashes with the Pink Panther.', 'character_image' => 'images/characters/BigNose.png', 'show' => 'Pink Panther and Pals'],
            ['name' => 'Aardvark', 'type' => 'villain', 'description' => 'An aardvark who constantly tries to catch and eat Ant.', 'character_image' => 'images/characters/Aardvark.png', 'show' => 'Pink Panther and Pals'],
            ['name' => 'Ant', 'type' => 'side', 'description' => 'A tiny ant who uses his wits to outsmart the Aardvark.', 'character_image' => 'images/characters/Ant.png', 'show' => 'Pink Panther and Pals'],
            // Lucas the Spider
            ['name' => 'Lucas', 'type' => 'hero', 'description' => 'An adorable jumping spider who is curious and friendly.', 'character_image' => 'images/characters/Lucas.png', 'show' => 'Lucas the Spider'],
            ['name' => 'Maizie', 'type' => 'side', 'description' => 'A cheerful bee who is one of Lucas friends.', 'character_image' => 'images/characters/Maizie.png', 'show' => 'Lucas the Spider'],
            ['name' => 'Findley', 'type' => 'side', 'description' => 'A friendly fly who is one of Lucas companions.', 'character_image' => 'images/characters/Findley.png', 'show' => 'Lucas the Spider'],
            ['name' => 'Arlo', 'type' => 'side', 'description' => 'A curious creature who interacts with Lucas.', 'character_image' => 'images/characters/Arlo.png', 'show' => 'Lucas the Spider'],
            // Regular Show
            ['name' => 'Mordecai', 'type' => 'hero', 'description' => 'A blue jay who works as a groundskeeper and often causes surreal chaos.', 'character_image' => 'images/characters/Mordecai.png', 'show' => 'Regular Show'],
            ['name' => 'Rigby', 'type' => 'hero', 'description' => 'A raccoon and Mordecais best friend, lazy but lovable.', 'character_image' => 'images/characters/Rigby.png', 'show' => 'Regular Show'],
            ['name' => 'Benson', 'type' => 'side', 'description' => 'The park manager, a gumball machine who is always stressed.', 'character_image' => 'images/characters/Benson.png', 'show' => 'Regular Show'],
            ['name' => 'Pops', 'type' => 'side', 'description' => 'A gentle and naive man who loves the park and its workers.', 'character_image' => 'images/characters/Pops.png', 'show' => 'Regular Show'],
        ];

        // Loop through each character, find its show, and create the record
        foreach ($characters as $character) {
            $show = Show::where('name', $character['show'])->first();
            Character::create([
                'name' => $character['name'],
                'type' => $character['type'],
                'description' => $character['description'],
                'character_image' => $character['character_image'],
                'show_id' => $show->id,
            ]);
        }
    }
}