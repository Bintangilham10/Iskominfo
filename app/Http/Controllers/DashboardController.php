<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Document;
use App\Models\Gallery;
use App\Models\Information;
use App\Models\News;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function __invoke()
    {
        $data = [
            'documents_count' => Document::count(),
            'galleries_count' => Gallery::count(),
            'informations_count' => Information::count(),
            'news_count' => News::count(),
            'categories_count' => Category::count(),
            'new_document' => Document::latest()->first(),
            'new_gallery' => Gallery::latest()->first(),
            'new_information' => Information::latest()->first(),
            'new_news' => News::latest()->first()
        ];

        return view('dashboard.index', compact('data'));
    }
}
