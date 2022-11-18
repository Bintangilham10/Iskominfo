<?php

if (!function_exists('menu')) {
    function menu()
    {
        return func_get_args();
    }
}

return [
    menu('Dashboard', 'dashboard.index', 'speedometer'),
    menu('Dokumen', 'dashboard.documents.index', 'speedometer'),
    menu('Galeri', 'dashboard.galleries.index', 'speedometer'),
    menu('Informasi', 'dashboard.informations.index', 'speedometer'),
    menu('Berita', 'dashboard.news.index', 'speedometer'),
    menu('Kategori', 'dashboard.categories.index', 'speedometer')
];
