<?php

namespace App\Models;

use Illuminate\Http\UploadedFile;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Document extends Model
{
    use HasFactory;

    protected static function booted()
    {
        static::saving(function ($gallery) {
            if ($gallery->url instanceof UploadedFile) {
                $name = $gallery->url->store('files/document', 'public');

                $url = asset("${name}");

                $gallery->url = $url;
            }
        });
    }

    public static function rules()
    {
        return [
            'name' => 'required|max:255',
            'url' => 'required|file'
        ];
    }
}
