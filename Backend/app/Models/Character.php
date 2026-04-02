<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Character extends Model
{
    use HasFactory;

    // define which fields can be mass assigned
    protected $fillable = [
        'name', 'type', 'description', 'show_id', 'character_image'
    ];

    // each character belongs to one show
    public function show(): BelongsTo
    {
        return $this->belongsTo(Show::class);
    }
}