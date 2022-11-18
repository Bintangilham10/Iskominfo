<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="An impressive and flawless site template that includes various UI elements and countless features, attractive ready-made blocks and rich pages, basically everything you need to create a unique and professional website.">
        <meta name="keywords" content="bootstrap 5, business, corporate, creative, gulp, marketing, minimal, modern, multipurpose, one page, responsive, saas, sass, seo, startup, html5 template, site template">
        <meta name="author" content="elemis">
        <title>{{ config('app.name') }}</title>
        <link rel="shortcut icon" href="{{ asset('sandbox/img/favicon.png') }}">
        <link rel="stylesheet" href="{{ asset('sandbox/css/plugins.css') }}">
        <link rel="stylesheet" href="{{ asset('sandbox/css/style.css') }}">

        <style>
            .navbar.navbar-bg-dark {
                background: rgba(9, 132, 227,1.0);
            }

            .bg-soft-primary {
                background-color: rgba(116, 185, 255, 0.2) !important;
            }
        </style>
    </head>
    <body>
        <div class="content-wrapper">
            <header class="wrapper bg-soft-primary">
                <nav class="navbar navbar-expand-lg center-nav navbar-bg-dark navbar-dark">
                    <div class="container flex-lg-row flex-nowrap align-items-center">
                        <div class="navbar-brand w-100">
                            <a href="./index.html">
                                <img src="https://diskominfo.banyuwangikab.go.id/themes/okok/img/logo.png" alt="" style="height: 50px"/>
                            </a>
                        </div>
                        <div class="navbar-collapse offcanvas offcanvas-nav offcanvas-start">
                            <div class="offcanvas-header d-lg-none">
                                <h3 class="text-white fs-30 mb-0">Diskominfo</h3>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body ms-lg-auto d-flex flex-column h-100">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('home') }}">Beranda</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Profil</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="#">Diskominfo & Sandi</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('profile.mission') }}">Visi Misi</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('profile.tupoksi') }}">Tupoksi</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('galleries.index') }}">Gallery</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('profile.structure') }}">Struktur Organisasi</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('ppid.background') }}">PPID</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Info</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('informations.index') }}">Info</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('news.index', ['category' => 1]) }}">News Government</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('news.index', ['category' => 2]) }}">News Technology</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('news.index') }}">Berita Umum</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="{{ route('documents.index') }}">Doc</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('services') }}">Layanan</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('contact') }}">Kontak</a>
                                    </li>
                                </ul>
                                <!-- /.navbar-nav -->
                            </div>
                            <!-- /.offcanvas-body -->
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container -->
                </nav>
                <!-- /.navbar -->
            </header>
            @yield('content')
        </div>
        <!-- /.content-wrapper -->
        <footer>
            <div class="container pb-7">
              <div class="d-md-flex align-items-center justify-content-between">
                <p class="mb-2 mb-lg-0">© 2022 Copyright: <a href="https://diskominfo.banyuwangikab.go.id/">Diskominfo & Persandian Kabupaten Banyuwangi</a></p>
                <nav class="nav social social-muted mb-0 text-md-end">
                  <a href="#"><i class="uil uil-twitter"></i></a>
                  <a href="#"><i class="uil uil-facebook-f"></i></a>
                  <a href="#"><i class="uil uil-dribbble"></i></a>
                  <a href="#"><i class="uil uil-instagram"></i></a>
                  <a href="#"><i class="uil uil-youtube"></i></a>
                </nav>
                <!-- /.social -->
              </div>
            </div>
            <!-- /.container -->
          </footer>
        <div class="progress-wrap">
            <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
                <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
            </svg>
        </div>
        <script src="{{ asset('sandbox/js/plugins.js') }}"></script>
        <script src="{{ asset('sandbox/js/theme.js') }}"></script>
    </body>
</html>