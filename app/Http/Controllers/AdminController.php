<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AdminController extends Controller
{
  public function login()
  {
    return view('admin.login');
  }

  /**
   * Handle an authentication attempt.
   *
   * @param  \Illuminate\Http\Request $request
   *
   * @return Response
   */
  public function authenticate(Request $request)
  {
    $request->validate([
      'email' => 'required',
      'password' => 'required',
    ]);

    $credentials = $request->only('email', 'password');
    if (Auth::attempt($credentials)) {
      return redirect()->intended('dashboard')
        ->withSuccess('Signed in');
    }

    return redirect("admin/login")->withSuccess('Login details are not valid');
  }

  public function logout()
  {
    Session::flush();
    Auth::logout();

    return Redirect('admin/login');
  }
}
