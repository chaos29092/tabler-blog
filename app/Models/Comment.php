<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
    protected $dates = ['created_at'];

    public function article()
    {
        return $this->belongsTo(Article::class);
    }
}
