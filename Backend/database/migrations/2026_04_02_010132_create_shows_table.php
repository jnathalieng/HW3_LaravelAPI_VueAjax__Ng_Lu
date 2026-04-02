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
        Schema::create('shows', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // show title
            $table->integer('year'); // use integer since year is a number
            $table->text('description'); // text allows longer content than string
            $table->string('slug'); // used for frontend filtering
            $table->string('poster_image')->nullable(); // nullable in case no image is set
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('shows');
    }
};
