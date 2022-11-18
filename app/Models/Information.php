<?php

namespace App\Models;

use Spatie\Sluggable\HasSlug;
use Illuminate\Http\UploadedFile;
use Spatie\Sluggable\SlugOptions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Information extends Model
{
    use HasFactory, HasSlug;

    protected $table = 'informations';

    protected static function booted()
    {
        static::saving(function ($information) {
            if ($information->image_url instanceof UploadedFile) {
                $name = $information->image_url->store('files/information', 'public');

                $url = asset("${name}");

                $information->image_url = $url;
            }
        });
    }

    public static function rules()
    {
        return [
            'title' => 'required|max:255',
            'body' => 'required',
            'image_url' => 'nullable|sometimes|file',
            'category_id' => 'nullable|array'
        ];
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function getSlugOptions(): SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('title')
            ->saveSlugsTo('slug');
    }

    public function categories()
    {
        return $this->morphToMany(Category::class, 'model', 'model_category');
    }
}
