<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DocumentController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\InformationController;
use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/migrate', function () {
    Artisan::call('migrate');

    return 'Migrated.';
});

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::view('layanan', 'services')->name('services');
Route::view('kontak', 'contact')->name('contact');

Route::prefix('/profil')->as('profile.')->group(function () {
    Route::view('visi_misi', 'profile.mission')->name('mission');
    Route::view('tupoksi', 'profile.tupoksi')->name('tupoksi');
    Route::view('struktur_organisasi', 'profile.structure')->name('structure');
});

Route::prefix('/ppid')->as('ppid.')->group(function () {
    Route::view('latar_belakang', 'ppid.background')->name('background');
    Route::view('pedoman', 'ppid.guidelines')->name('guidelines');
    Route::view('dasar_hukum_pembentukan', 'ppid.legal')->name('legal');
    Route::view('sk_pembentukan', 'ppid.sk')->name('sk');
    Route::view('sop', 'ppid.sop')->name('sop');
    Route::view('dip', 'ppid.dip')->name('dip');
});

Route::get('berita', [HomeController::class, 'news'])->name('news.index');
Route::get('berita/{news}', [HomeController::class, 'singleNews'])->name('news.show');

Route::get('informasi', [HomeController::class, 'informations'])->name('informations.index');
Route::get('informasi/{information}', [HomeController::class, 'singleInformation'])->name('informations.show');

Route::get('dokumen', [HomeController::class, 'documents'])->name('documents.index');

Route::get('galeri', [HomeController::class, 'galleries'])->name('galleries.index');

Route::prefix('/dashboard')->as('dashboard.')->group(function () {
    Route::get('/', DashboardController::class)->name('index')->middleware('auth');

    Route::resource('news', NewsController::class);
    Route::resource('informations', InformationController::class);
    Route::resource('categories', CategoryController::class);
    Route::resource('galleries', GalleryController::class);
    Route::resource('documents', DocumentController::class);
});

Route::prefix('/admin')->as('admin.')->group(function () {
    Route::get('/login', [AdminController::class, 'login'])->name('login');
    Route::get('/logout', [AdminController::class, 'logout'])->name('logout');
});

Route::post('authenticate', [AdminController::class, 'authenticate'])->name('admin.auth');


