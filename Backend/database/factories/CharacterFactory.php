<?php

namespace Database\Factories;

use App\Models\Show;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // Randomly select a show for each generated character
        $show = Show::inRandomOrder()->first();
        return [
            'name' => $this->faker->name,
            'type' => $this->faker->randomElement(['hero', 'villain', 'side']),
            'description' => $this->faker->sentence,
            'show_id' => $show->id,
            'character_image' => null,
        ];
    }
}