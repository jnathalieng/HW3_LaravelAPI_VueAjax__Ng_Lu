<?php

namespace App\Http\Controllers;

use App\Models\Show;
use Illuminate\Http\Request;

class ShowController extends Controller
{
    /**
     * Display a listing of shows.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        // Get all shows with their characters
        $shows = Show::with('characters')->get();
        return response()->json(['data' => $shows]);
    }

    /**
     * Store a newly created show.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        // Create a new show with the request data
        $show = Show::create($request->all());
        return response()->json(['data' => $show], 201);
    }

    /**
     * Display the specified show.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        // Find show by id with characters, return 404 if not found
        $show = Show::with('characters')->findOrFail($id);
        return response()->json(['data' => $show]);
    }

    /**
     * Update the specified show.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, $id)
    {
        // Find show and update with request data
        $show = Show::findOrFail($id);
        $show->update($request->all());
        return response()->json(['data' => $show]);
    }

    /**
     * Remove the specified show.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        // Find show and delete it
        $show = Show::findOrFail($id);
        $show->delete();
        return response()->json(null, 204);
    }
}