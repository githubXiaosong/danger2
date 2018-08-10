<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function chapters(){
        return $this->hasMany('App\Chapter');
    }
}
