<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;

class FoodballRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Auth::check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'distrocts_id' => 'required',
            'image1' => 'required|max:2048',
            'image2' => 'max:2048',
            'lacation' => 'max:255',
            'address' => 'required|max:255',
            'description' => 'required',
            'phone1' => 'required|max:100',
            'phone2' => 'max:255',
            'messinger_link' => 'max:100',
            'eni' => 'required|max:100',
            'buyi' => 'required|max:100',
            'working_hours' => 'required|max:100',
            'created_at' => 'date',
            'updated_at' => 'date',
        ];
    }
}
