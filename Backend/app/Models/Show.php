<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Show extends Model
{
    use HasFactory;
    
    // define which fields can be mass assigned
    protected $fillable = [
        'name', 'year', 'description', 'slug', 'poster_image'
    ];

    // a show can have many characters
    public function characters(): HasMany
    {
        return $this->hasMany(Character::class);
    }
}