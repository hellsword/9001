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

//Descarga el archivo
Route::get('/getfile/{id}', function($id)
{
    $file =  DB::table('archivo')->where('num_archivo', '=', $id)->first();
    $data = $file->archivo;
    $data_arr = explode("-",$data);
    $nombre = '';
    for ($x = 1; $x < count($data_arr); $x++){
    	$nombre = $nombre.$data_arr[$x];
    } 
    return response()->download(public_path($data), $nombre);
});

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/usuarios/ver_perfil', 'UsuarioController@ver_perfil');
Route::get('/usuarios/ver_ficha', 'UsuarioController@ver_ficha');
Route::get('/documento/downloadPDF', 'DocumentoController@downloadPDF');

//RUTAS AUTOCOMPLETADO EN NUEVO PROCESO
Route::get('/nuevo_proceso', 'ProcesoController@create');
Route::get('/search/autocomplete_responsable','ProcesoController@autocomplete_responsable');
//Route::get('/search/autocomplete_areaProceso','ProcesoController@autocomplete_areaProceso');

//RUTAS AUTOCOMPLETADO EN NUEVO RIESGO
Route::get('/nuevo_riesgo', 'RiesgoController@create');
Route::get('/editar_riesgo', 'RiesgoController@edit');
Route::get('/search/autocomplete_proceso','RiesgoController@autocomplete_proceso');

//RUTAS AUTOCOMPLETADO EN NUEVO OBJETIVO
Route::get('/nuevo_objetivo', 'ObjetivoController@create');
Route::get('/search/autocomplete_objetivo','ObjetivoController@autocomplete_objetivo');


//RUTAS AUTOCOMPLETADO EN NUEVO MEDICION
Route::get('/nueva_medicion', 'MedicionController@create');


Route::resource('medicion','MedicionController');
Route::get('/listado', 'ListaContactoController@listado'); // para ver listado

//para formacion
route::get('/mi_formacion','FormacionController@mi_formacion');

Route::resource('usuarios','UsuarioController');
Route::resource('documentacion','DocumentacionController');
Route::resource('documento','DocumentoController');
Route::resource('archivo','ArchivoController');
Route::resource('formacion','FormacionController');
Route::resource('procesos','ProcesoController');
Route::resource('areas_procesos','AreasProcesoController');
Route::resource('objetivo','ObjetivoController');
Route::resource('riesgos','RiesgoController');
Route::resource('calendario','CalendarioController');
Route::resource('lista_contactos','ListaContactoController'); //
Route::resource('contactos','ContactoController');

Route::get('/logout','Auth\LoginController@logout');
Route::get('/lista','UsuarioController@index');
