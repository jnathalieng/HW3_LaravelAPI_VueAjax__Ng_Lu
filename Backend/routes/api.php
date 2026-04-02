<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ShowController;
use App\Http\Controllers\CharacterController;

// Register all RESTful routes for shows
Route::apiResource('shows', ShowController::class);
// Register all RESTful routes for characters
Route::apiResource('characters', CharacterController::class);