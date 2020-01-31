<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Branch;

class Bank extends Model
{

    protected $table="banks";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['bank_name'];

    public function branches(){
        return $this->hasMany('App\Branch');
    }
}