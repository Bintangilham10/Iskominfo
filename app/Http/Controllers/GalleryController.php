<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $galleries = Gallery::paginate();
        
        return view('dashboard.gallery.index', compact('galleries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return $this->form(new Gallery);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(Gallery::rules());

        $gallery = Gallery::create($data);

        return to_route('dashboard.galleries.show', $gallery)->with('success', __('gallery.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function show(Gallery $gallery)
    {
        return $this->form($gallery);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function edit(Gallery $gallery)
    {
        return $this->form($gallery);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Gallery $gallery)
    {
        $data = $request->validate(Gallery::rules());

        $gallery->update($data);

        return to_route('dashboard.galleries.show', $gallery)->with('success', __('gallery.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function destroy(Gallery $gallery)
    {
        $gallery->delete();

        return to_route('dashboard.galleries.index')->with('success', __('gallery.deleted'));
    }

    protected function form(Gallery $gallery)
    {
        $exists = $gallery->exists;

        $route = [
            'action' => $exists ? route('dashboard.galleries.update', $gallery) : route('dashboard.galleries.store'),
            'method' => $exists ? 'PUT' : 'POST'
        ];

        $title = ($exists ? 'Edit' : 'Buat') . ' Galeri';

        return view('dashboard.gallery.form', compact('gallery', 'title', 'route'));
    }
}
