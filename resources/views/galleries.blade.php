@extends('main')

@section('content')
<section class="wrapper bg-light">
	<div class="container py-14 py-md-16">
		<div class="row text-center">
            <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
              <h3 class="display-4 mb-10 px-xl-10">Gallery</h3>
            </div>
            <!-- /column -->
          </div>
		<!-- /.row -->
		<div>
            @foreach ($galleries->chunk(3) as $g)
            <div class="row mt-5">
                @foreach ($g as $gallery)
                <div class="item col-md-6 col-lg-4">
                    <figure class="overlay overlay-1 hover-scale rounded">
                      <a href="{{ $gallery->url }}" data-glightbox="title: {{ $gallery->title }}; description: {{ $gallery->description }}"  data-gallery="gallery-image"><img src="{{ $gallery->url }}" srcset="{{ $gallery->url }}" alt="" /></a>
                      <figcaption>
                        <h5 class="from-top mb-0">Image</h5>
                      </figcaption>
                    </figure>
                  </div>
                  @endforeach
            </div>
              @endforeach
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>
<!-- /section -->
@endsection