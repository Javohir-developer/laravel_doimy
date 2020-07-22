<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//exmaple route

//Route::group(['prefix'=>'admin'], function(){
//    Route::get('android',              'AndroidController@index')->middleware('auth');
//    Route::get('android/index',        'AndroidController@index')->name('android.index')->middleware('auth');
//    Route::get('android/create',       'AndroidController@create')->name('android.create');
//    Route::post('android/store',       'AndroidController@store')->name('android.store');
//    Route::get('android/edit/{id}',    'AndroidController@edit')->name('android.edit');
//    Route::put('android/update/{id}',  'AndroidController@update')->name('android.update');
//    Route::get('android/show/{id}',    'AndroidController@show')->name('android.show');
//    Route::delete('android/destroy/{id}', 'AndroidController@destroy')->name('android.destroy');
//});

//end example route


        Auth::routes();
//frontend
        Route::get('/', function () {return view('site/index');})->name('site');
        Route::get('/single', function () {return view('site/single');})->name('site.single');
// end frontend

// beckend home
        Route::get('/home', 'HomeController@index')->name('home');
//end backend home



// foodball resourcelar
        Route::group(['prefix'=>'admin'], function(){
            Route::resource('foodball','FoodballController')->middleware('auth');
            Route::post('foodball/store','FoodballController@store')->name('foodball.store');
        });
        Route::resource('foodball_forntend','FoodballController');
        Route::get('onchange_test/{id}' , 'FoodballController@lists_one');
//end foodball resourcelar

// langueg
        Route::get('locale/{locale}', function ($locale){
            Session::put('locale', $locale);
            return redirect()->back();
        });
//end langueg


//click
//handle requests from payment system
        Route::any('/handle/{paysys}',function($paysys){
            (new Goodoneuz\PayUz\PayUz)->driver($paysys)->handle();
        });

//redirect to payment system or payment form
        Route::any('/pay/{paysys}/{key}/{amount}',function($paysys, $key, $amount){
            $model = Goodoneuz\PayUz\Services\PaymentService::convertKeyToModel($key);
            $url = request('redirect_url','/'); // redirect url after payment completed
            $pay_uz = new Goodoneuz\PayUz\PayUz;
            $pay_uz
                ->driver($paysys)
                ->redirect($model, $amount, 860, $url);
        });
//end click
