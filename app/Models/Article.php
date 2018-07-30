<?php

namespace App\Models;

use Nicolaslopezj\Searchable\SearchableTrait;

use Illuminate\Database\Eloquent\Model;


class Article extends Model
{
    protected $dates = ['published_at'];

    use SearchableTrait;
    protected $searchable = [
        'columns' => [
            'articles.name' => 10,
            'articles.body' => 9,
        ]
    ];


    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
