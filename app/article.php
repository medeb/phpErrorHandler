<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
 use \Conner\Tagging\Taggable;

class article extends Model
{
    public function tags(){
    	return $this->belongsTomany('App/Tag');
    }
}
