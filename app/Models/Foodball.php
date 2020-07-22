<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Foodball extends Model
{
    protected $table = 'football_field';
    protected $fillable = [
        'distrocts_id',
        'image1',
        'image2',
        'lacation',
        'address',
        'description',
        'phone1',
        'phone2',
        'messinger_link',
        'eni',
        'buyi',
        'working_hours',
        'created_at',
        'updated_at',

    ];
    public $timestamps = false;
}
