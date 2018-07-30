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

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'HomeController@index');
Route::get('articles/{category_slug}', 'HomeController@article_category');
Route::get('tags/{tag_slug}', 'HomeController@tag');
Route::get('articles/{category_slug}/{article_slug}', 'HomeController@article');

Route::get('search','HomeController@search');
Route::post('submit_comment','HomeController@submit_comment');
Route::get('delete_comment/{comment_id}','HomeController@delete_comment');

Route::get('sitemap.xml', 'HomeController@sitemap');

//Route::post('contact_submit', 'MailController@submit');
//Route::get('submit_ok', 'MailController@submit_ok');

Route::get('cache_clear','HomeController@cache_clear');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
