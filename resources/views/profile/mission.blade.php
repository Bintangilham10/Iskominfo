@extends('main')
@section('content')
<section class="wrapper bg-soft-primary">
    <div class="container pt-10 pb-12 pt-md-14 pb-md-16 text-center">
      <div class="row">
        <div class="col-md-10 col-lg-8 col-xl-7 col-xxl-6 mx-auto">
          <h1 class="display-1 mb-3">Visi & Misi</h1>
        </div>
        <!-- /column -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>

  <div class="container">
    <div class="row gx-0">
      <aside class="col-xl-3 sidebar sticky-sidebar mt-md-0 py-16 d-none d-xl-block">
        <div class="widget">
          <nav id="sidebar-nav">
            <ul class="list-unstyled text-reset">
              <li><a class="nav-link scroll" href="#visi">
                <div class="icon btn btn-block btn-lg btn-soft-blue disabled mb-2"> <i class="uil uil-archive-alt"></i> </div>
                <br>
    
                Visi</a></li>
              <li><a class="nav-link scroll" href="#misi">
                <div class="icon btn btn-block btn-lg btn-soft-blue disabled mb-2"> <i class="uil uil-apps"></i> </div>
                <br>
                Misi</a></li>
            </ul>
          </nav>
          <!-- /nav -->
        </div>
        <!-- /.widget -->
      </aside>
      <!-- /column -->
      <div class="col-xl-8">
        <section id="visi" class="wrapper pt-16">
          <div class="card">
            <div class="card-body p-10">
              <h2 class="mb-3">Visi</h2>
              <p>Terwujudnya masyarakat Banyuwangi yang semakin sejahtera, mandiri, dan berakhlak mulia melalui peningkatan perokonomian dan kualitas sumber daya manusia.</p>
            </div>
            <!--/.card-body -->
          </div>
          <!--/.card -->
        </section>
        <section id="misi" class="wrapper pt-5 pb-16">
          <div class="card">
            <div class="card-body p-10">
              <h2 class="mb-3">Misi</h2>
              <p>Mewujudkan tata pemerintahan yang baik dan bersih (Good and clean governance) serta layanan publik yang berkualitas berbasis teknologi informasi.</p>
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