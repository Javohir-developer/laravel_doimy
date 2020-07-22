<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Regions extends Model
{
    protected $table = 'regions';
//    public $rules = [
//        'nomi' => 'max:255',
//        'status' => 'max:255',
//
//    ];
    protected $fillable = [
        'nomi',
        'status',

    ];
    public $timestamps = false;
}
