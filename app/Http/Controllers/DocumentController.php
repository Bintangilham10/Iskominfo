<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Document::paginate();
        
        return view('dashboard.document.index', compact('documents'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return $this->form(new Document);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(Document::rules());

        $document = Document::create($data);

        return to_route('dashboard.documents.show', $document)->with('success', __('document.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {
        return $this->form($document);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        return $this->form($document);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
        $data = $request->validate(Document::rules());

        $document->update($data);

        return to_route('dashboard.documents.show', $document)->with('success', __('document.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        $document->delete();

        return to_route('dashboard.documents.index')->with('success', __('document.deleted'));
    }

    protected function form(Document $document)
    {
        $exists = $document->exists;

        $route = [
            'action' => $exists ? route('dashboard.documents.update', $document) : route('dashboard.documents.store'),
            'method' => $exists ? 'PUT' : 'POST'
        ];

        $title = ($exists ? 'Edit' : 'Buat') . ' Dokumen';

        return view('dashboard.document.form', compact('document', 'title', 'route'));
    }
}
