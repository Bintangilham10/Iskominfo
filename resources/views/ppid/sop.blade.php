@extends('main')
@section('content')
<section class="wrapper bg-soft-primary">
    <div class="container pt-10 pb-12 pt-md-14 pb-md-16 text-center">
      <div class="row">
        <div class="col-md-10 col-lg-8 col-xl-7 col-xxl-6 mx-auto">
          <h1 class="display-1 mb-3">SOP PPID</h1>
        </div>
        <!-- /column -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>

  <div class="container">
    <div class="row gx-0">
      @include('partials.ppid')
      <!-- /column -->
      <div class="col-xl-8">
        <section id="visi" class="wrapper py-16">
          <div class="card">
            <div class="card-body p-10">
                <strong>SOP Permohonan Informasi </strong>
                <img class="img-fluid mt-5" src="{{asset('template/images/a1.jpeg')}}" alt="">

                <strong>SOP Permohonan Informasi </strong>
                <img class="img-fluid mt-5" src="{{asset('template/images/a2.jpeg')}}" alt="">

                <strong>SOP Keberatan Atas Pemberian Informasi publik</strong>
                <img class="img-fluid mt-5" src="{{asset('template/images/b1.jpeg')}}" alt="">

                <strong>SOP Keberatan Atas Pemberian Informasi publik</strong>
                <img class="img-fluid mt-5" src="{{asset('template/images/b2.jpeg')}}" alt="">
            </div>
            <!--/.card-body -->
          </div>
          <!--/.card -->
        </section>
      </div>
      <!-- /column -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->
@endsection