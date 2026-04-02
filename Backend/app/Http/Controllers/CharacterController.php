<?php

namespace App\Http\Controllers;

use App\Models\Character;
use Illuminate\Http\Request;

class CharacterController extends Controller
{
    /**
     * Display a listing of characters.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        // Start query with related show
        $query = Character::with('show');

        // Filter by name search
        if ($request->has('search')) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }

        // Filter by show
        if ($request->has('show_id')) {
            $query->where('show_id', $request->show_id);
        }

        // Filter by type
        if ($request->has('type')) {
            $query->where('type', $request->type);
        }

        $characters = $query->get();
        return response()->json(['data' => $characters]);
    }

    /**
     * Store a newly created character.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        // Create a new character with the request data
        $character = Character::create($request->all());
        return response()->json(['data' => $character], 201);
    }

    /**
     * Display the specified character.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        // Find character by id with related show, return 404 if not found
        $character = Character::with('show')->findOrFail($id);

        // Build response data including show name
        $data = [
            'id' => $character->id,
            'name' => $character->name,
            'type' => $character->type,
            'description' => $character->description,
            'character_image' => $character->character_image,
            'show_id' => $character->show_id,
            'show_name' => $character->show->name ?? null,
        ];

        return response()->json(['data' => $data]);
    }

    /**
     * Update the specified character.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, $id)
    {
        // Find character and update with request data
        $character = Character::findOrFail($id);
        $character->update($request->all());
        return response()->json(['data' => $character]);
    }

    /**
     * Remove the specified character.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        // Find character and delete it
        $character = Character::findOrFail($id);
        $character->delete();
        return response()->json(null, 204);
    }
}