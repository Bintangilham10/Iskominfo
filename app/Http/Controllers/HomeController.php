<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Gallery;
use App\Models\Category;
use App\Models\Document;
use App\Models\Information;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $news = News::latest()->limit(6)->with('categories')->get();
        
        return view('index', compact('news'));
    }

    public function news(Request $request)
    {
        $categories = Category::get();
        $news = News::latest()
            ->when($request->category, function ($query, $category) {
                $query->whereRelation('categories', 'categories.id', $category);
            })
            ->when($request->keyword, function ($query, $keyword) {
                $query->where('title', 'like', "%${keyword}%");
            })
            ->get();

        return view('news', compact('news', 'categories'));
    }

    public function singleNews(News $news)
    {
        $otherNews = News::inRandomOrder()->limit(3)->get();

        return view('single_news', compact('news', 'otherNews'));
    }

    public function informations()
    {
        $categories = Category::get();
        $informations = Information::latest()->get();

        return view('informations', compact('informations', 'categories'));
    }

    public function singleInformation(Information $information)
    {
        return view('single_information', compact('information'));
    }

    public function documents()
    {
        $documents = Document::orderBy('name')->get();

        return view('documents', compact('documents'));
    }

    public function galleries()
    {
        $galleries = Gallery::get();

        return view('galleries', compact('galleries'));
    }
}
