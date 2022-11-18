@extends('main')

@section('content')
<div class="container py-14 py-md-16">
    <div class="row text-center">
		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
		  <h3 class="display-4 mb-10 px-xl-10">Informasi</h3>
		</div>
		<!-- /column -->
	  </div>
    <form class="filter-form mb-10">
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="form-select-wrapper">
                    <select class="form-select" aria-label="" name="category">
                        <option selected disabled>Kategori</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <div class="mb-4">
                    <input id="textInputExample" type="text" class="form-control" placeholder="Kata Kunci" name="keyword">
                  </div>
            </div>
            <div class="col-md-2 mb-3">
                <button class="btn btn-primary" style="display: block">Cari</button>
            </div>
        </div>
    </form>
<div class="blog grid grid-view">
    <div class="row isotope gx-md-8 gy-8 mb-8">
    @foreach ($informations as $item)
      <article class="item post col-md-6">
        <div class="card">
          <figure class="card-img-top overlay overlay-1 hover-scale"><a href="{{ route('informations.show', $item) }}"> <img src="{{ $item->image_url }}" alt="" /></a>
            <figcaption>
              <h5 class="from-top mb-0">Baca Selengkapnya</h5>
            </figcaption>
          </figure>
          <div class="card-body">
            <div class="post-header">
              <div class="post-category text-line">
                <a href="#" class="hover" rel="category">{{ $item->categories->implode(', ') }}</a>
              </div>
              <!-- /.post-category -->
              <h2 class="post-title h3 mt-1 mb-3"><a class="link-dark" href="{{ route('informations.show', $item) }}">{{ $item->title }}</a></h2>
            </div>
            <!-- /.post-header -->
            <div class="post-content">
                <p>{{ str(strip_tags($item->body))->limit(100) }}</p>
            </div>
            <!-- /.post-content -->
          </div>
          <!--/.card-body -->
          <div class="card-footer">
            <ul class="post-meta d-flex mb-0">
              <li class="post-date"><i class="uil uil-calendar-alt"></i><span>{{ $item->created_at->format('d M Y')  }}</span></li>
            </ul>
            <!-- /.post-meta -->
          </div>
          <!-- /.card-footer -->
        </div>
        <!-- /.card -->
      </article>
      @endforeach
    </div>
    <!-- /.row -->
  </div>
  <!-- /.blog -->
</div>
@endsection