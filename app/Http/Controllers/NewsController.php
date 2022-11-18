<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Category;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::paginate();
        
        return view('dashboard.news.index', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return $this->form(new News);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(News::rules());

        $news = News::create(collect($data)->except('category_id')->toArray());

        $news->categories()->sync($data['category_id'] ?? []);

        return to_route('dashboard.news.show', $news)->with('success', __('news.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        return $this->form($news);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        return $this->form($news);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        $data = $request->validate(News::rules());

        $news->update(collect($data)->except('category_id')->toArray());

        $news->categories()->sync($data['category_id'] ?? []);

        return to_route('dashboard.news.show', $news)->with('success', __('news.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        $news->delete();

        return to_route('dashboard.news.index')->with('success', __('news.deleted'));
    }

    protected function form(News $news)
    {
        $categories = Category::get();

        $exists = $news->exists;

        $route = [
            'action' => $exists ? route('dashboard.news.update', $news) : route('dashboard.news.store'),
            'method' => $exists ? 'PUT' : 'POST'
        ];

        $title = ($exists ? 'Edit' : 'Buat') . ' Berita';

        return view('dashboard.news.form', compact('news', 'categories', 'title', 'route'));
    }
}
