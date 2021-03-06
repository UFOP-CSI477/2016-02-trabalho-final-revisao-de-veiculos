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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', 'HomeController@index');
Route::resource('veiculos', 'VeiculoController');
Route::resource('noticias', 'NoticiaController');
Route::resource('vistorias', 'VistoriaController');
Route::resource('servicos', 'ServicoController');
Route::resource('previsaos', 'PrevisaoController');
Route::resource('formularios', 'FormularioController');
