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
      background: rgba(9, 132, 227, 1.0);
    }

    .bg-soft-primary {
      background-color: rgba(116, 185, 255, 0.2) !important;
    }
  </style>
</head>

<body class="bg-primary">
  <main class="login-form">
    <div class="cotainer">
      <div class="row justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-4">
          @if(session('success'))
          <div class="alert alert-danger" role="alert">
            {{session('success')}}
          </div>
          @endif
          <div class="card">
            <h3 class="card-header text-center">Login</h3>
            <div class="card-body">
              <form method="POST" action="{{ route('admin.auth') }}">
                @csrf
                <div class="form-group mb-3">
                  <input type="text" placeholder="Email" id="email" class="form-control" name="email" required autofocus>
                  @if ($errors->has('email'))
                  <span class="text-danger">{{ $errors->first('email') }}</span>
                  @endif
                </div>
                <div class="form-group mb-3">
                  <input type="password" placeholder="Password" id="password" class="form-control" name="password" required>
                  @if ($errors->has('password'))
                  <span class="text-danger">{{ $errors->first('password') }}</span>
                  @endif
                </div>
                <button type="submit" class="btn btn-primary btn-sm my-4">Login</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>

</html>