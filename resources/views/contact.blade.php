@extends('main')

@section('content')
<section class="wrapper bg-light">
    <div class="container py-14 py-md-16">
      <div class="row">
        <div class="col-xl-10 mx-auto">
          <div class="card">
            <div class="row gx-0">
              <div class="col-lg-6 align-self-stretch">
                <div class="map map-full rounded-top rounded-lg-start">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.1967443376473!2d114.35559952919267!3d-8.224165299630098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd15ab50b1c7791%3A0xb3c98689e07581b1!2sDinas%20Komunikasi%20Informatika%20dan%20Persandian!5e0!3m2!1sid!2sid!4v1657774478202!5m2!1sid!2sid" style="width:100%; height: 100%; border:0" allowfullscreen></iframe>
                </div>
                <!-- /.map -->
              </div>
              <!--/column -->
              <div class="col-lg-6">
                <div class="p-10 p-md-11 p-lg-14">
                  <div class="d-flex flex-row">
                    <div>
                      <div class="icon text-primary fs-28 me-4 mt-n1"> <i class="uil uil-location-pin-alt"></i> </div>
                    </div>
                    <div class="align-self-start justify-content-start">
                      <h5 class="mb-1">Alamat</h5>
                      <address>Jl. Kh. Agus Salim No 83, Taman Baru, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68416, Indonesia</address>
                    </div>
                  </div>
                  <!--/div -->
                  <div class="d-flex flex-row">
                    <div>
                      <div class="icon text-primary fs-28 me-4 mt-n1"> <i class="uil uil-phone-volume"></i> </div>
                    </div>
                    <div>
                      <h5 class="mb-1">Telp</h5>
                      <p>(0333) 422400</p>
                    </div>
                  </div>
                  <div class="d-flex flex-row">
                    <div>
                      <div class="icon text-primary fs-28 me-4 mt-n1"> <i class="uil uil-microphone"></i> </div>
                    </div>
                    <div>
                      <h5 class="mb-1">Fax</h5>
                      <p>(0333) 413437</p>
                    </div>
                  </div>
                  <!--/div -->
                  <div class="d-flex flex-row">
                    <div>
                      <div class="icon text-primary fs-28 me-4 mt-n1"> <i class="uil uil-envelope"></i> </div>
                    </div>
                    <div>
                      <h5 class="mb-1">E-mail</h5>
                      <p class="mb-0"><a href="mailto:sandbox@email.com" class="link-body">kominfosandi@banyuwangikab.go.id
                    </a></p>
                    </div>
                  </div>
                  <!--/div -->
                </div>
                <!--/div -->
              </div>
              <!--/column -->
            </div>
            <!--/.row -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /column -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
  <!-- /section -->
    {{-- <div class="grid grid-cols-1 md:grid-cols-12 gap-4">
        <div class="lg:col-span-6 md:col-span-6">
            <h1 class="text-3xl font-bold text-center py-10 underline underline-offset-8 decoration-2 decoration-sky-500">
                Dinas Komunikasi, Informatika, dan Persandian Banyuwangi
            </h1>
            <div class="img-kontak m-auto" style="background-image:url(/images/logo-kominfo.jpg)"></div>
            <h1 class="text-xl font-bold pt-5 px-10 underline underline-offset-2 decoration-2 decoration-sky-500">Alamat :</h1>
            <h1 class="px-10 text-xl">Jl. Kh. Agus Salim No 83, Taman Baru, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68416, Indonesia</h1>
            <h1 class="text-xl font-bold pt-3 px-10 underline underline-offset-2 decoration-2 decoration-sky-500">Email :</h1>
            <h1 class="px-10 text-xl">kominfosandi@banyuwangikab.go.id</h1>
            <h1 class="text-xl font-bold pt-3 px-10 underline underline-offset-2 decoration-2 decoration-sky-500">Telp :</h1>
            <h1 class="px-10 text-xl">(0333) 422400</h1>
            <h1 class="text-xl font-bold pt-3 px-10 underline underline-offset-2 decoration-2 decoration-sky-500">Fax :</h1>
            <h1 class="px-10 text-xl mb-5">(0333) 413437</h1>
        </div>
        <div class="py-5 m-auto lg:col-span-6 md:col-span-6 ">
            <!-- <iframe class="w-4/5 h-96 sm:w-40 sm:h-32" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.1967443376473!2d114.35559952919267!3d-8.224165299630098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd15ab50b1c7791%3A0xb3c98689e07581b1!2sDinas%20Komunikasi%20Informatika%20dan%20Persandian!5e0!3m2!1sid!2sid!4v1657774478202!5m2!1sid!2sid" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> -->
            <iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.1967443376473!2d114.35559952919267!3d-8.224165299630098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd15ab50b1c7791%3A0xb3c98689e07581b1!2sDinas%20Komunikasi%20Informatika%20dan%20Persandian!5e0!3m2!1sid!2sid!4v1657774478202!5m2!1sid!2sid" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div> --}}
@endsection