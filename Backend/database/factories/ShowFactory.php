<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ShowFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            // use faker to generate placeholder show data for testing
            'name' => $this->faker->name,
            'year' => $this->faker->year,
            'description' => $this->faker->sentence,
            'slug' => $this->faker->slug,
            'poster_image' => null,
        ];
    }
}