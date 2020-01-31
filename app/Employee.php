<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Branch;

class Employee extends Model
{

    protected $table="employees";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['emp_name','emp_email','emp_photo','emp_address','password','branch_id'];

    public function branch(){
        return $this->belongsTo('App\Branch');
    }
}