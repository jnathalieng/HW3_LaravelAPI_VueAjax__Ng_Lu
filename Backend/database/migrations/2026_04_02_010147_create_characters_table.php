<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('characters', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // store the character name here
            $table->string('type'); // use this to categorize characters as hero, villain, or side
            $table->text('description'); // text to allow longer character descriptions
            $table->bigInteger('show_id')->nullable(); // foreign key linking to shows table
            $table->string('character_image')->nullable(); // store the relative image path here
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('characters');
    }
};
