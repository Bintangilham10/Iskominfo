<!doctype html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Dashboard | {{ config('app.name') }}</title>
        <meta name="description" content="{{ config('app.name') }}">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta property="og:title" content="{{ config('app.name') }}">
        <meta property="og:site_name" content="OneUI">
        <meta property="og:description" content="{{ config('app.name') }}">
        <meta property="og:type" content="website">
        <meta property="og:url" content="">
        <meta property="og:image" content="">
        <link rel="shortcut icon" href="{{ asset('oneui/media/favicons/favicon.png') }}">
        <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('oneui/media/favicons/favicon-192x192.png') }}">
        <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('oneui/media/favicons/apple-touch-icon-180x180.png') }}">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap">
        <link rel="stylesheet" href="{{ asset('oneui/js/plugins/select2/css/select2.min.css') }}">
        <link rel="stylesheet" id="css-main" href="{{ asset('oneui/css/oneui.min-5.2.css') }}">
    </head>
    <body>
        <div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed main-content-narrow">
            <nav id="sidebar" aria-label="Main Navigation">
                <div class="content-header">
                    <a class="fw-semibold text-dual" href="index.html">
                        <span class="smini-visible">
                            <i class="fa fa-circle-notch text-primary"></i>
                        </span>
                        <span class="smini-hide fs-5 tracking-wider">One <span class="fw-normal">UI</span>
                        </span>
                    </a>
                    <div>
                        <button type="button" class="btn btn-sm btn-alt-secondary" data-toggle="layout" data-action="dark_mode_toggle">
                            <i class="far fa-moon"></i>
                        </button>
                        <a class="d-lg-none btn btn-sm btn-alt-secondary ms-1" data-toggle="layout" data-action="sidebar_close" href="javascript:void(0)">
                            <i class="fa fa-fw fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="js-sidebar-scroll">
                    <div class="content-side">
                        <ul class="nav-main">
                            @foreach (config('menu') as $menu)
                                <li class="nav-main-item">
                                    <a class="nav-main-link" href="{{ route($menu[1]) }}">
                                        <i class="nav-main-link-icon si si-{{ $menu[2] }}"></i>
                                        <span class="nav-main-link-name">{{ $menu[0] }}</span>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </nav>
            <header id="page-header">
                <div class="content-header">
                    <div class="d-flex align-items-center">
                        <button type="button" class="btn btn-sm btn-alt-secondary me-2 d-lg-none" data-toggle="layout" data-action="sidebar_toggle">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>
                        <button type="button" class="btn btn-sm btn-alt-secondary me-2 d-none d-lg-inline-block" data-toggle="layout" data-action="sidebar_mini_toggle">
                            <i class="fa fa-fw fa-ellipsis-v"></i>
                        </button>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="dropdown d-inline-block ms-2">
                            <button type="button" class="btn btn-sm btn-alt-secondary d-flex align-items-center" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="rounded-circle" src="{{ asset('oneui/media/avatars/avatar10.jpg') }}" alt="Header Avatar" style="width: 21px;">
                                <span class="d-none d-sm-inline-block ms-2">Admin</span>
                                <i class="fa fa-fw fa-angle-down d-none d-sm-inline-block opacity-50 ms-1 mt-1"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-md dropdown-menu-end p-0 border-0" aria-labelledby="page-header-user-dropdown">
                                <div class="p-3 text-center bg-body-light border-bottom rounded-top">
                                    <img class="img-avatar img-avatar48 img-avatar-thumb" src="{{ asset('oneui/media/avatars/avatar10.jpg') }}" alt="">
                                    <p class="mt-2 mb-0 fw-medium">Admin</p>
                                    <p class="mb-0 text-muted fs-sm fw-medium">Admin</p>
                                </div>
                                <div class="p-2">
                                    <a class="dropdown-item d-flex align-items-center justify-content-between" href="{{ route('admin.logout') }}">
                                        <span class="fs-sm fw-medium">Log Out</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <main id="main-container">
                @yield('content')
            </main>
            <footer id="page-footer" class="bg-body-extra-light">
                <div class="content py-3">
                    <div class="row fs-sm">
                        <div class="col-sm-6 order-sm-1 py-1 text-center text-sm-start">
                            2017 - 2020 DISKOMINFO & Persandian
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="{{ asset('oneui/js/plugins/select2/js/select2.full.min.js') }}"></script>
        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
        <script src="{{ asset('oneui/js/oneui.app.min-5.2.js') }}"></script>

        @stack('scripts')
    </body>
</html>