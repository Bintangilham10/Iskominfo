@extends('dashboard.main')

@section('content')
<div class="content">
    <div
        class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center py-2 text-center text-md-start">
        <div class="flex-grow-1 mb-1 mb-md-0">
            <h1 class="h3 fw-bold mb-2"> Kategori </h1>
        </div>
        <a href="{{ route('dashboard.categories.create') }}" class="btn btn-primary">Buat Kategori</a>
    </div>
</div>
<div class="content">
    <div class="block block-rounded">
        <div class="block-header block-header-default">
            <h3 class="block-title">List Kategori</h3>
        </div>
        <div class="block-content">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-vcenter">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 150px;">ID</th>
                            <th>Slug</th>
                            <th>Nama</th>
                            <th style="width: 15%;">Tanggal Dibuat</th>
                            <th class="text-center" style="width: 100px;">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($categories as $category)
                            <tr>
                                <td class="fw-semibold fs-sm text-center">
                                    <a href="{{ route('dashboard.categories.show', $category) }}">{{ $category->id }}</a>
                                </td>
                                <td class="fs-sm">{{ $category->slug }}</td>
                                <td class="fs-sm">{{ $category->name }}</td>
                                <td>
                                    {{ $category->created_at->translatedFormat('d F Y H:i:s') }}
                                </td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a href="{{ route('dashboard.categories.edit', $category) }}" class="btn btn-sm btn-alt-secondary" data-bs-toggle="tooltip"
                                            title="Edit">
                                            <i class="fa fa-fw fa-pencil-alt"></i>
                                        </a>
                                        <button action="{{ route('dashboard.categories.destroy', $category) }}" type="button" class="btn btn-sm btn-alt-secondary delete-btn" data-bs-toggle="tooltip"
                                            title="Hapus">
                                            <i class="fa fa-fw fa-times"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center">Tidak ada data</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            <div class="d-flex justify-content-end">
                {{ $categories->links() }}
            </div>
        </div>
    </div>
</div>
<form method="POST" id="delete-form">
    @csrf
    @method('DELETE')
</form>
@endsection

@push('scripts')
<script>
    $('.delete-btn').click(function () {
        $('#delete-form').attr('action', $(this).attr('action'));

        if (confirm('Hapus kategori?')) {
            $('#delete-form').submit();
        }
    });
</script>
@endpush