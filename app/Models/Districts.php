<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Districts extends Model
{
    protected $table = 'districts';
//    public $rules = [
//        'nomi' => 'max:255',
//        'regions_id' => 'max:255',
//        'status' => 'max:255',
//
//    ];
    protected $fillable = [
        'nomi',
        'regions_id',
        'status',

    ];
    public $timestamps = false;
}
