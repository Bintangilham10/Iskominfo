@extends('main')
@section('content')
<section class="wrapper bg-soft-primary">
    <div class="container pt-10 pb-12 pt-md-14 pb-md-16 text-center">
      <div class="row">
        <div class="col-md-10 col-lg-8 col-xl-7 col-xxl-6 mx-auto">
          <h1 class="display-1 mb-3">Dasar Hukum Pembentukan PPID</h1>
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
                <div>
                    <strong>Dasar Hukum Pembentukan</strong>
                    <ol>
                        <li style="font-weight: bold">Peraturan Yang Mendasari Pembentukan PPID :</li>
                        <ol>
                            <li>Undang - Undang RI No. 14/2008 tentang keterbukaan informasi publik</li>
                            <li>Peraturan pemerintah RI No. 61/2010 tentang pelaksanaan undang - undang No. 14/2008</li>
                            <li>Peraturan komisi informasi No. 1/2010 tentang standart layanan informasi publik</li>
                            <li>Peraturan menteri dalam negeri No. 2/2010 tentang pedoman pengelolaan layanan informasi dan dokumentasi di lingkungan kementrian dalam negeri</li>
                            <li>Peraturan menteri komunikasi dan informatika No. 10/2010 tentang pedoman pengelolaan pelayanan informasi dan dokumentasi di lingkungan kementrian komunikasi dan infomatika</li>
                        </ol>
                        <li style="font-weight: bold">Peraturan Yang Mendasari Pembentukan PPID Kabupaten Banyuwangi :</li>
                        <ol>
                            <li>Surat keputusan bupati nomor : 199/511/KEP/429.011/2012 tentang pembentukan tim penyusun rancangan peraturan bupati tentang pedoman pengelolaan layanan informasi dan dokumentasi di Kabupaten Banyuwangi</li>
                            <li>Peraturan bupati Banyuwangi nomor 19 tahun 2012 tanggal 25 Juni 2012 tentang pedoman pelayanan informasi dan dokumentasi di lingkungan pemerintahan Kabupaten Banyuwangi</li>
                        </ol>
                        <li style="font-weight: bold">Peraturan Yang Mendasari Pembentukan PPID Pembantu Diskominfo dan Persandian Kabupaten banyuwangi :</li>
                        <ol>
                            <li>Keputusan kepala dinas kominfo dan persandian Kabupaten Banyuwangi nomor : 891/169/429.118/2017 tentang pejabat pengelola informasi dan dokumentasi (PPID) pembantu pada komunikasi, informatika dan persandian Kabupaten Banyuwangi</li>
                            <li>Keputusan kepala dinas kominfo dan persandian Kabupaten Banyuwangi nomor 119/11/KEP/429.116/2020 tentang pejabat pengelola informasi dan dokumentasi (PPID) pembantu pada dinas kominikasi, informatika dan persandian Kabupaten Banyuwangi</li>
                        </ol>
                    </ol>
                </div>
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