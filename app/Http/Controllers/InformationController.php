<?php

namespace App\Http\Controllers;

use App\Models\Information;
use App\Models\Category;
use Illuminate\Http\Request;

class InformationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $informations = Information::paginate();
        
        return view('dashboard.information.index', compact('informations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return $this->form(new Information);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(Information::rules());

        $information = Information::create(collect($data)->except('category_id')->toArray());

        $information->categories()->sync($data['category_id'] ?? []);

        return to_route('dashboard.informations.show', $information)->with('success', __('information.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Information  $information
     * @return \Illuminate\Http\Response
     */
    public function show(Information $information)
    {
        return $this->form($information);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Information  $information
     * @return \Illuminate\Http\Response
     */
    public function edit(Information $information)
    {
        return $this->form($information);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Information  $information
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Information $information)
    {
        $data = $request->validate(Information::rules());

        $information->update(collect($data)->except('category_id')->toArray());

        $information->categories()->sync($data['category_id'] ?? []);

        return to_route('dashboard.informations.show', $information)->with('success', __('information.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Information  $information
     * @return \Illuminate\Http\Response
     */
    public function destroy(Information $information)
    {
        $information->delete();

        return to_route('dashboard.informations.index')->with('success', __('information.deleted'));
    }

    protected function form(Information $information)
    {
        $categories = Category::get();

        $exists = $information->exists;

        $route = [
            'action' => $exists ? route('dashboard.informations.update', $information) : route('dashboard.informations.store'),
            'method' => $exists ? 'PUT' : 'POST'
        ];

        $title = ($exists ? 'Edit' : 'Buat') . ' Informasi';

        return view('dashboard.information.form', compact('information', 'categories', 'title', 'route'));
    }
}
