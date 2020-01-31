<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Bank;
use App\Employee;

class Branch extends Model
{

    protected $table="branches";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['branch_name','branch_address','bank_id'];

    public function bank(){
        return $this->belongsTo('App\Bank');
    }

    public function employees(){
        return $this->hasMany('App\Employee');
    }
}