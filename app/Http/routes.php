<?php


Route::get('/', function () {
    return view('welcome');
});

Route::get('tags','TagController@search');
Route::POST('findTag','TagController@find');
Route::GET('adtag','TagController@addTag');
Route::POST('addTag','TagController@add');

