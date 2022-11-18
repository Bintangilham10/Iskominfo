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
                    <input type="text" class="form-control" id="id" name="id" placeholder="ID" disabled value="{{ $document->id }}">
                </div>
                <div class="mb-4">
                    <label class="form-label" for="name">Nama</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Nama" value="{{ old('name', $document->name) }}" required>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="url">File</label>
                    <input class="form-control" type="file" id="url" name="url">
                </div>
                @if ($document->exists)
                    <div class="mb-4">
                        <a href="{{ $document->url }}" target="_blank">File</a>
                    </div>
                @endif
                <div class="d-flex justify-content-end mb-4">
                    @if ($document->exists)
                        <a href="#" id="delete-btn" class="btn btn-danger" style="margin-right: 10px">Hapus</a>
                    @endif

                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

@if ($document->exists)
    <form action="{{ route('dashboard.documents.destroy', $document) }}" method="POST" id="delete-form">
        @csrf
        @method('DELETE')
    </form>
@endif
@endsection

@push('scripts')
<script>
    $('#delete-btn').click(function () {
        if (confirm('Hapus dokumen?')) {
            $('#delete-form').submit();
        }
    });
</script>
@endpush
