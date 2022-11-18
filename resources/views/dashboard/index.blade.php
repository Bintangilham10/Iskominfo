@extends('dashboard.main')

@section('content')
<div class="content">
    <div
        class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center py-2 text-center text-md-start">
        <div class="flex-grow-1 mb-1 mb-md-0">
            <h1 class="h3 fw-bold mb-2"> Dashboard </h1>
            <h2 class="h6 fw-medium fw-medium text-muted mb-0">
                Welcome <a class="fw-semibold" href="#">Admin</a>.
            </h2>
        </div>
    </div>
</div>
<div class="content">
    <div class="row items-push">
        <div class="col-sm-6 col-xxl-3">

            <div class="block block-rounded d-flex flex-column h-100 mb-0">
                <div
                    class="block-content block-content-full flex-grow-1 d-flex justify-content-between align-items-center">
                    <dl class="mb-0">
                        <dt class="fs-3 fw-bold">{{ $data['documents_count'] }}</dt>
                        <dd class="fs-sm fw-medium fs-sm fw-medium text-muted mb-0">Jumlah Dokumen</dd>
                    </dl>
                    <div class="item item-rounded-lg bg-body-light">
                        <i class="far fa-gem fs-3 text-primary"></i>
                    </div>
                </div>
                <div class="bg-body-light rounded-bottom">
                    <a class="block-content block-content-full block-content-sm fs-sm fw-medium d-flex align-items-center justify-content-between"
                        href="{{ route('dashboard.documents.index') }}">
                        <span>Lihat semua dokumen</span>
                        <i class="fa fa-arrow-alt-circle-right ms-1 opacity-25 fs-base"></i>
                    </a>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-xxl-3">

            <div class="block block-rounded d-flex flex-column h-100 mb-0">
                <div
                    class="block-content block-content-full flex-grow-1 d-flex justify-content-between align-items-center">
                    <dl class="mb-0">
                        <dt class="fs-3 fw-bold">{{ $data['galleries_count'] }}</dt>
                        <dd class="fs-sm fw-medium fs-sm fw-medium text-muted mb-0">Jumlah Galeri</dd>
                    </dl>
                    <div class="item item-rounded-lg bg-body-light">
                        <i class="far fa-user-circle fs-3 text-primary"></i>
                    </div>
                </div>
                <div class="bg-body-light rounded-bottom">
                    <a class="block-content block-content-full block-content-sm fs-sm fw-medium d-flex align-items-center justify-content-between"
                        href="{{ route('dashboard.galleries.index') }}">
                        <span>Lihat semua galeri</span>
                        <i class="fa fa-arrow-alt-circle-right ms-1 opacity-25 fs-base"></i>
                    </a>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-xxl-3">

            <div class="block block-rounded d-flex flex-column h-100 mb-0">
                <div
                    class="block-content block-content-full flex-grow-1 d-flex justify-content-between align-items-center">
                    <dl class="mb-0">
                        <dt class="fs-3 fw-bold">{{ $data['informations_count'] }}</dt>
                        <dd class="fs-sm fw-medium fs-sm fw-medium text-muted mb-0">Jumlah Informasi</dd>
                    </dl>
                    <div class="item item-rounded-lg bg-body-light">
                        <i class="far fa-paper-plane fs-3 text-primary"></i>
                    </div>
                </div>
                <div class="bg-body-light rounded-bottom">
                    <a class="block-content block-content-full block-content-sm fs-sm fw-medium d-flex align-items-center justify-content-between"
                        href="{{ route('dashboard.informations.index') }}">
                        <span>Lihat semua informasi</span>
                        <i class="fa fa-arrow-alt-circle-right ms-1 opacity-25 fs-base"></i>
                    </a>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-xxl-3">

            <div class="block block-rounded d-flex flex-column h-100 mb-0">
                <div
                    class="block-content block-content-full flex-grow-1 d-flex justify-content-between align-items-center">
                    <dl class="mb-0">
                        <dt class="fs-3 fw-bold">{{ $data['news_count'] }}</dt>
                        <dd class="fs-sm fw-medium fs-sm fw-medium text-muted mb-0">Jumlah Berita</dd>
                    </dl>
                    <div class="item item-rounded-lg bg-body-light">
                        <i class="fa fa-chart-bar fs-3 text-primary"></i>
                    </div>
                </div>
                <div class="bg-body-light rounded-bottom">
                    <a class="block-content block-content-full block-content-sm fs-sm fw-medium d-flex align-items-center justify-content-between"
                        href="{{ route('dashboard.news.index') }}">
                        <span>Lihat semua berita</span>
                        <i class="fa fa-arrow-alt-circle-right ms-1 opacity-25 fs-base"></i>
                    </a>
                </div>
            </div>

        </div>

        <div class="col-sm-12 col-xxl-12">

            <div class="block block-rounded d-flex flex-column h-100 mb-0">
                <div
                    class="block-content block-content-full flex-grow-1 d-flex justify-content-between align-items-center">
                    <dl class="mb-0">
                        <dt class="fs-3 fw-bold">{{ $data['categories_count'] }}</dt>
                        <dd class="fs-sm fw-medium fs-sm fw-medium text-muted mb-0">Jumlah Kategori</dd>
                    </dl>
                    <div class="item item-rounded-lg bg-body-light">
                        <i class="fa fa-chart-bar fs-3 text-primary"></i>
                    </div>
                </div>
                <div class="bg-body-light rounded-bottom">
                    <a class="block-content block-content-full block-content-sm fs-sm fw-medium d-flex align-items-center justify-content-between"
                        href="{{ route('dashboard.categories.index') }}">
                        <span>Lihat semua kategori</span>
                        <i class="fa fa-arrow-alt-circle-right ms-1 opacity-25 fs-base"></i>
                    </a>
                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <h1 class="h3 fw-bold mb-2"> Terbaru </h1>
    </div>

    <div class="row">
        <div class="col-md-12 col-xl-6">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">
                        Dokumen terbaru
                    </h3>
                </div>
                <div class="block-content">
                    @if ($data['new_document'])
                        <p>Nama: <strong>{{ $data['new_document']->name }}</strong></p>
                        <p>Tanggal Dibuat: <strong>{{ $data['new_document']->created_at->translatedFormat('d F Y H:i:s') }}</strong></p>
                        <p>Source: <strong><a href="{{ $data['new_document']->url }}">File</a></strong></p>
                    @else
                        <p>Tidak ada dokumen</p>
                    @endif
                </div>
            </div>
        </div>

        <div class="col-md-12 col-xl-6">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">
                        Galeri terbaru
                    </h3>
                </div>
                <div class="block-content">
                    @if ($data['new_gallery'])
                        <p>Nama: <strong>{{ $data['new_gallery']->title }}</strong></p>
                        <p>Tanggal Dibuat: <strong>{{ $data['new_gallery']->created_at->translatedFormat('d F Y H:i:s') }}</strong></p>
                        <p>Source: <strong><a href="{{ $data['new_gallery']->url }}">File</a></strong></p>
                    @else
                        <p>Tidak ada galeri</p>
                    @endif
                </div>
            </div>
        </div>

        <div class="col-md-12 col-xl-6">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">
                        Informasi terbaru
                    </h3>
                </div>
                <div class="block-content">
                    @if ($data['new_information'])
                        <p>Nama: <strong>{{ $data['new_information']->title }}</strong></p>
                        <p>Tanggal Dibuat: <strong>{{ $data['new_information']->created_at->translatedFormat('d F Y H:i:s') }}</strong></p>
                        <p>Link: <strong><a href="{{ route('dashboard.informations.show', $data['new_information']) }}">Lihat</a></strong></p>
                    @else
                        <p>Tidak ada informasi</p>
                    @endif
                </div>
            </div>
        </div>

        <div class="col-md-12 col-xl-6">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">
                        Berita terbaru
                    </h3>
                </div>
                <div class="block-content">
                    @if ($data['new_news'])
                        <p>Nama: <strong>{{ $data['new_news']->title }}</strong></p>
                        <p>Tanggal Dibuat: <strong>{{ $data['new_news']->created_at->translatedFormat('d F Y H:i:s') }}</strong></p>
                        <p>Link: <strong><a href="{{ route('dashboard.news.show', $data['new_news']) }}">Lihat</a></strong></p>
                    @else
                        <p>Tidak ada informasi</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
