<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\News>
 */
class NewsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'slug' => $this->faker->slug(),
            'title' => $this->faker->sentence(),
            'image_url' => null,
            'body' => $this->faker->paragraph(10),
            'user_id' => User::factory()
        ];
    }
}
