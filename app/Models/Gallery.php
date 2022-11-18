<?php

namespace App\Models;

use Illuminate\Http\UploadedFile;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Gallery extends Model
{
    use HasFactory;

    protected static function booted()
    {
        static::saving(function ($gallery) {
            if ($gallery->url instanceof UploadedFile) {
                $name = $gallery->url->store('files/gallery', 'public');

                $url = asset("${name}");

                $gallery->url = $url;
            }
        });
    }

    public static function rules()
    {
        return [
            'title' => 'nullable|max:255',
            'description' => 'nullable|max:255',
            'url' => 'required|file',
            'type' => 'required'
        ];
    }
}
