<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->get('/movie/more', 'MovieController@more');
    $router->resource('users', UserController::class);
    $router->resource('movies', MovieController::class);

});
Route::get('/admin/index', function () {
    return view('admin/welcome',['admin'=>'admin']);
});

