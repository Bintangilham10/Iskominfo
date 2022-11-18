@extends('main')
@section('content')
<section class="wrapper bg-soft-primary">
    <div class="container pt-10 pb-12 pt-md-14 pb-md-16 text-center">
      <div class="row">
        <div class="col-md-10 col-lg-8 col-xl-7 col-xxl-6 mx-auto">
          <h1 class="display-1 mb-3">Latar Belakang PPID</h1>
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
        <section id="visi" class="wrapper pt-16">
          <div class="card">
            <div class="card-body p-10">
              <h2 class="mb-3">Latar Belakang</h2>
              <p>Reformasi yang bergulir pada tahun 1998 yang ditandai dengan 3(tiga) tuntutan yaitu; demokratisasi, tranparasi dan supremasi hukum & HAM, telah membawa perubahan mendasar dalam kehidupan bermasyarakat, berbangsa dan benegara. Konsekuensi dari tuntutan reformasi tersebut salah satu diantaranya adalah ditetapkannya UU N0.14 tahun 2008 tentang Keterbukaan Informasi Publik yang bertujuan untuk mewujudkan tata kelola pemerintahan yang baik dan bertanggungjawab (good governance) melalui penerapan prinsip-prinsip akuntabilitas, transparansi dan supremasi hukum serta melibatkan partisipasi masyarakat dalam setiap proses kebijakan publik.</p>
            </div>
            <!--/.card-body -->
          </div>
          <!--/.card -->
        </section>
        <section id="misi" class="wrapper py-5">
          <div class="card">
            <div class="card-body p-10">
              <h2 class="mb-3">Maksud PPID</h2>
              <p>Pedoman pengelolaan Informasi dan Dokumentasi di lingkungan Kementerian Komunikasi dan Informatika dimaksudkan sebagai acuan bagi setiap Satuan Kerja dalam penyediaan, pengumpulan, pendokumentasian dan pelayanan, serta penetapan Pejabat Pengelola Informasi dan Dokumentasi.</p>
            </div>
            <!--/.card-body -->
          </div>
          <!--/.card -->
        </section>

        <section id="misi" class="wrapper pb-16">
            <div class="card">
              <div class="card-body p-10">
                <h2 class="mb-3">Tujuan PPID</h2>
                <ol>
                    <li>Masing-masing Satuan Kerja mampu menyediakan, mengumpulkan, mendokumentasikan dan menyampaikan informasi tentang kegiatan dan produk unit kerjanya secara akurat dan tidak menyesatkan.</li>
                    <li>Satuan Kerja mampu menyediakan, mengumpulkan, mendokumentasikan dan menyampaikan bahan dan produk informasi secara cepat dan tepat waktu.</li>
                    <li>Pejabat Pengelola Informasi dan Dokumentasi mampu memberikan pelayanan informasi secara cepat dan tepat waktu dengan biaya ringan dan cara sederhana.</li>
                </ol>
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