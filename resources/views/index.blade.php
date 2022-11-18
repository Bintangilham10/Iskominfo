@extends('main')

@section('content')
<!-- /header -->
<section class="wrapper bg-dark">
  <div class="swiper-container swiper-hero dots-over" data-margin="0" data-autoplay="true" data-autoplaytime="7000" data-nav="true" data-dots="true" data-items="1">
    <div class="swiper">
      <div class="swiper-wrapper">
        @foreach(config('app.slides') as $slide)
        <div class="swiper-slide bg-overlay bg-overlay-400 bg-dark bg-image" data-image-src="{{ $slide['image'] }}">
          <div style="background-color: rgba(63, 120, 224, 0.5);position:absolute; bottom:0; top:0;left:0;right:50%" class="d-flex justify-content-center align-items-center">
            <div class="position-relative" style="z-index: 1;">
              <h1 class="text-white">{{ $slide['title'] }}</h1>
              <p class="text-white">{{ $slide['subtitle'] }}</p>
            </div>
          </div>

          <div class="container h-100">
            <!--/.row -->
          </div>
          <!--/.container -->
        </div>
        <!--/.swiper-slide -->
        @endforeach
      </div>
      <!--/.swiper-wrapper -->
    </div>
    <!-- /.swiper -->
  </div>
  <!-- /.swiper-container -->
</section>
<section id="snippet-3" class="wrapper bg-light wrapper-border">
  <div class="container pt-15 pt-md-17 pb-13 pb-md-15">
    <div class="row">
      <div class="col-lg-9 col-xl-8 col-xxl-7 mx-auto">
        <h3 class="display-4 mb-6 text-center">Berita Terkini</h3>
      </div>
      <!-- /column -->
    </div>
    <!-- /.row -->
    <div class="position-relative">
      <div class="shape bg-dot primary rellax w-17 h-20" data-rellax-speed="1" style="top: 0; left: -1.7rem;"></div>
      <div class="swiper-container dots-closer blog grid-view mb-6" data-margin="0" data-dots="true" data-items-xl="3" data-items-md="2" data-items-xs="1">
        <div class="swiper">
          <div class="swiper-wrapper"> @foreach ($news as $newsRow) <div class="swiper-slide">
              <div class="item-inner">
                <article>
                  <div class="card">
                    <figure class="card-img-top overlay overlay-1 hover-scale">
                      <a href="{{ route('news.show', $newsRow) }}">
                        <img src="{{ $newsRow->image_url }}" alt="" />
                      </a>
                      <figcaption>
                        <h5 class="from-top mb-0">Baca Selengkapnya</h5>
                      </figcaption>
                    </figure>
                    <div class="card-body">
                      <div class="post-header">
                        <div class="post-category text-line">
                          <a href="#" class="hover" rel="category">{{ $newsRow->categories->implode(', ') }}</a>
                        </div>
                        <!-- /.post-category -->
                        <h2 class="post-title h3 mt-1 mb-3">
                          <a class="link-dark" href="{{ route('news.show', $newsRow) }}">{{ $newsRow->title }}</a>
                        </h2>
                      </div>
                      <!-- /.post-header -->
                      <div class="post-content">
                        <p>{{ str(strip_tags($newsRow->body))->limit(100) }}</p>
                      </div>
                      <!-- /.post-content -->
                    </div>
                    <!--/.card-body -->
                    <div class="card-footer">
                      <ul class="post-meta d-flex mb-0">
                        <li class="post-date">
                          <i class="uil uil-calendar-alt"></i>
                          <span>{{ $newsRow->created_at->format('d M Y') }}</span>
                        </li>
                      </ul>
                      <!-- /.post-meta -->
                    </div>
                    <!-- /.card-footer -->
                  </div>
                  <!-- /.card -->
                </article>
                <!-- /article -->
              </div>
              <!-- /.item-inner -->
            </div> @endforeach </div>
          <!--/.swiper-wrapper -->
        </div>
        <!-- /.swiper -->
      </div>
      <!-- /.swiper-container -->
    </div>
    <!-- /.position-relative -->
  </div>
  <!-- /.container -->
</section>
<section class="wrapper bg-soft-primary">
  <div class="container py-14 pt-md-16 pt-lg-0 pb-md-16">
    <!--/.row -->
    <div class="row text-center">
      <div class="col-lg-9 mx-auto">
        <h3 class="mt-12 display-4 mb-0 text-center px-xl-10 px-xxl-15">Layanan</h3>
        <div class="row gx-lg-8 gx-xl-12 process-wrapper text-center mt-9">
          <div class="col-md-4">
            <img src="{{ asset('sandbox/img/icons/lineal/light-bulb.svg') }}" class="svg-inject icon-svg icon-svg-md text-primary mb-3" alt="" />
            <h4 class="mb-1">1. Lorem</h4>
            <p>Nulla vitae elit libero elit non porta gravida eget metus cras.</p>
          </div>
          <!--/column -->
          <div class="col-md-4">
            <img src="{{ asset('sandbox/img/icons/lineal/settings-3.svg') }}" class="svg-inject icon-svg icon-svg-md text-red mb-3" alt="" />
            <h4 class="mb-1">2. Lorem</h4>
            <p>Nulla vitae elit libero elit non porta gravida eget metus cras.</p>
          </div>
          <!--/column -->
          <div class="col-md-4">
            <img src="{{ asset('sandbox/img/icons/lineal/design.svg') }}" class="svg-inject icon-svg icon-svg-md text-leaf mb-3" alt="" />
            <h4 class="mb-1">3. Lorem</h4>
            <p>Nulla vitae elit libero elit non porta gravida eget metus cras.</p>
          </div>
          <!--/column -->
        </div>
        <!--/.row -->
      </div>
      <!-- /column -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->
</section>
<section id="snippet-1" class="wrapper bg-light wrapper-border">
  <div class="container pt-15 pt-md-17 pb-13 pb-md-15">
    <div class="row text-center">
      <div class="col-xl-10 mx-auto">
        <h3 class="display-4 mb-10 px-xxl-15">Link Terkait</h3>
      </div>
      <!-- /column -->
    </div>
    <!-- /.row -->
    <div class="row gy-6">
      @for ($i = 0; $i < 6; $i++) <div class="col-md-6 col-lg-4">
        <a href="#" class="card shadow-lg lift h-100">
          <div class="card-body p-5 d-flex flex-row">
            <div>
              <h4 class="mb-1">Lorem</h4>
              <p class="mb-0 text-body">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
          </div>
        </a>
    </div>
    @endfor
  </div>
  </div>
</section>
@endsection