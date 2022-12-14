@extends('main')

@section('content')
<section class="wrapper bg-light">
	<div class="container py-14 py-md-16 text-center">
	  <div class="row">
		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
		  <h3 class="display-4 mb-10 px-xl-10">Layanan</h3>
		</div>
		<!-- /column -->
	  </div>
	  <!-- /.row -->
	  <div class="position-relative">
		<div class="shape rounded-circle bg-soft-blue rellax w-16 h-16" data-rellax-speed="1" style="bottom: -0.5rem; right: -2.2rem; z-index: 0;"></div>
		<div class="shape bg-dot yellow rellax w-16 h-17" data-rellax-speed="1" style="top: -0.5rem; left: -2.5rem; z-index: 0;"></div>
		<div class="row gx-md-5 gy-5 text-center">
		  <div class="col-md-6 col-xl-3">
			<div class="card shadow-lg">
			  <div class="card-body">
				<img src="{{ asset('sandbox/img/icons/lineal/search-2.svg') }}" class="svg-inject icon-svg icon-svg-md text-yellow mb-3" alt="" />
				<h4>SEO Services</h4>
				<p class="mb-2">Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo.</p>
				<a href="#" class="more hover link-yellow">Learn More</a>
			  </div>
			  <!--/.card-body -->
			</div>
			<!--/.card -->
		  </div>
		  <!--/column -->
		  <div class="col-md-6 col-xl-3">
			<div class="card shadow-lg">
			  <div class="card-body">
				<img src="{{ asset('sandbox/img/icons/lineal/browser.svg') }}" class="svg-inject icon-svg icon-svg-md text-red mb-3" alt="" />
				<h4>Web Design</h4>
				<p class="mb-2">Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo.</p>
				<a href="#" class="more hover link-red">Learn More</a>
			  </div>
			  <!--/.card-body -->
			</div>
			<!--/.card -->
		  </div>
		  <!--/column -->
		  <div class="col-md-6 col-xl-3">
			<div class="card shadow-lg">
			  <div class="card-body">
				<img src="{{ asset('sandbox/img/icons/lineal/chat-2.svg') }}" class="svg-inject icon-svg icon-svg-md text-green mb-3" alt="" />
				<h4>Social Engagement</h4>
				<p class="mb-2">Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo.</p>
				<a href="#" class="more hover link-green">Learn More</a>
			  </div>
			  <!--/.card-body -->
			</div>
			<!--/.card -->
		  </div>
		  <!--/column -->
		  <div class="col-md-6 col-xl-3">
			<div class="card shadow-lg">
			  <div class="card-body">
				<img src="{{ asset('sandbox/img/icons/lineal/megaphone.svg') }}" class="svg-inject icon-svg icon-svg-md text-blue mb-3" alt="" />
				<h4>Content Marketing</h4>
				<p class="mb-2">Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo.</p>
				<a href="#" class="more hover link-blue">Learn More</a>
			  </div>
			  <!--/.card-body -->
			</div>
			<!--/.card -->
		  </div>
		  <!--/column -->
		</div>
		<!--/.row -->
	  </div>
	  <!-- /.position-relative -->
	</div>
	<!-- /.container -->
  </section>
  <!-- /section -->
@endsection