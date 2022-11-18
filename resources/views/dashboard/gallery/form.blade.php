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
                    <input type="text" class="form-control" id="id" name="id" placeholder="ID" disabled value="{{ $gallery->id }}">
                </div>
                <div class="mb-4">
                    <label class="form-label" for="title">Judul</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Nama" value="{{ old('title', $gallery->title) }}" required>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="type">Tipe</label>
                    <select name="type" id="type" class="form-control">
                        <option value="photo">Foto</option>
                        <!-- <option value="video">Video</option> -->
                    </select>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="description">Deskripsi</label>
                    <textarea name="description" class="form-control" id="description" cols="30" rows="10" placeholder="Isi" required>{{ old('description', $gallery->description) }}</textarea>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="url">File</label>
                    <input class="form-control" type="file" id="url" name="url">
                </div>
                <div class="mb-4">
                    <img class="img-fluid" style="max-width: 500px" src="{{ $gallery->url }}" alt="{{ $gallery->title }}">
                </div>
                <div class="d-flex justify-content-end mb-4">
                    @if ($gallery->exists)
                        <a href="#" id="delete-btn" class="btn btn-danger" style="margin-right: 10px">Hapus</a>
                    @endif

                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

@if ($gallery->exists)
    <form action="{{ route('dashboard.galleries.destroy', $gallery) }}" method="POST" id="delete-form">
        @csrf
        @method('DELETE')
    </form>
@endif
@endsection

@push('scripts')
<script>
    $('#delete-btn').click(function () {
        if (confirm('Hapus galeri?')) {
            $('#delete-form').submit();
        }
    });
</script>
@endpush
