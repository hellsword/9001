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
    return view('auth/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/usuarios/ver_perfil', 'UsuarioController@ver_perfil');

//RUTAS AUTOCOMPLETADO EN NUEVO PROCESO
Route::get('/nuevo_proceso', 'ProcesoController@create');
Route::get('/search/autocomplete_responsable','ProcesoController@autocomplete_responsable');
//Route::get('/search/autocomplete_areaProceso','ProcesoController@autocomplete_areaProceso');

//RUTAS AUTOCOMPLETADO EN NUEVO RIESGO
Route::get('/nuevo_riesgo', 'RiesgoController@create');
Route::get('/search/autocomplete_proceso','RiesgoController@autocomplete_proceso');

//RUTAS AUTOCOMPLETADO EN NUEVO OBJETIVO
Route::get('/nuevo_objetivo', 'ObjetivoController@create');
Route::get('/search/autocomplete_objetivo','ObjetivoController@autocomplete_objetivo');

Route::resource('usuarios','UsuarioController');
Route::resource('formacion','FormacionController');
Route::resource('procesos','ProcesoController');
Route::resource('areas_procesos','AreasProcesoController');
Route::resource('objetivo','ObjetivoController');
Route::resource('riesgos','RiesgoController');
Route::resource('calendario','CalendarioController');


Route::get('/logout','Auth\LoginController@logout');
Route::get('/lista','UsuarioController@index');