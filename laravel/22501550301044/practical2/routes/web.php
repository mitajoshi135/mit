<?php

use Illuminate\Support\Facades\Route;

Route::get('/demo', function () {
    return view('home');
});

Route::redirect('/demo1','/demo1');
// Route::get('/demo1', function () {
//    return view('welcome');
// });

// Route::view('/abc','welcome');

Route::get('/about/{name}', function ($name) {
    // echo $name;
    return view('about',['name'=>$name]);
});

