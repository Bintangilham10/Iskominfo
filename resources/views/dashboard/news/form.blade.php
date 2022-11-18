@extends('dashboard.main')

@section('content')
<div class="content">
    <div
        class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center py-2 text-center text-md-start">
        <div class="flex-grow-1 mb-1 mb-md-0">
            <h1 class="h3 fw-bold mb-2"> {{ $title }} </h1>
        </div>
    </div>
</div>
<div class="content">
    <div class="block block-rounded">
        <div class="block-header block-header-default">
            <h3 class="block-title">{{ $title }}</h3>
        </div>
        <div class="block-content">
            <form action="{{ $route['action'] }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method($route['method'])
                <div class="mb-4">
                    <label class="form-label" for="id">ID</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="ID" disabled value="{{ $news->id }}">
                </div>
                <div class="mb-4">
                    <label class="form-label" for="slug">Slug</label>
                    <input disabled type="text" class="form-control" id="slug" name="slug" placeholder="Slug" value="{{ $news->slug }}">
                </div>
                <div class="mb-4">
                    <label class="form-label" for="title">Judul</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Judul" value="{{ old('title', $news->title) }}" required>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="body">Isi</label>
                    <textarea name="body" class="form-control" id="body" cols="30" rows="10" placeholder="Isi" required>{{ old('body', $news->body) }}</textarea>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="category_id">Kategori</label>
                    <select class="js-select2 form-select" id="category_id" name="category_id[]" style="width: 100%;" data-placeholder="Kategori" multiple>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}" @selected($news->categories->contains($category))>{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="image_url">Gambar</label>
                    <input class="form-control" type="file" id="image_url" name="image_url">
                </div>
                <div class="mb-4">
                    <img class="img-fluid" style="max-width: 500px" src="{{ $news->image_url }}" alt="{{ $news->title }}">
                </div>
                <div class="d-flex justify-content-end mb-4">
                    @if ($news->exists)
                        <a href="#" id="delete-btn" class="btn btn-danger" style="margin-right: 10px">Hapus</a>
                    @endif

                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

@if ($news->exists)
    <form action="{{ route('dashboard.news.destroy', $news) }}" method="POST" id="delete-form">
        @csrf
        @method('DELETE')
    </form>
@endif
@endsection

@push('scripts')
<script>
    $('#delete-btn').click(function () {
        if (confirm('Hapus berita?')) {
            $('#delete-form').submit();
        }
    });

    $('#category_id').select2();
</script>
@endpush
