<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

use DB;

//Modelos
use App\Documento;
use App\Documentacion;

class DocumentacionController extends Controller
{
    protected $auth;
   
    //vamos a declarar un constructor:
    public function __construct(Guard $auth)
    {
        //le diremos que gestione el acceso por usuario 
        $this->middleware('auth');
        $this->auth =$auth;
    }

    public function index()
    {
      $documentaciones = DB::table('documentacion')
      		->join('proceso', 'proceso.id_proceso', '=', 'documentacion.id_proceso')
            ->select('id_doc as id_doc',
                      'version_proceso as version_proceso',
                  	  'fecha_inicio as fecha_inicio',
                  	  'fecha_fin as fecha_fin',
                  	  'num_cambios as num_cambios',
                  	  'num_participantes as num_participantes',
                  	  'documentacion.id_proceso as id_proceso',
                  	  'proceso.nombre as proceso_nombre')
      ->paginate(15);

      return view('documentacion.index')->with('documentaciones',$documentaciones);
    }


    public function show($id){

	      	$documentacion = DB::table('documentacion')
      		->join('proceso', 'proceso.id_proceso', '=', 'documentacion.id_proceso')
      		->where('id_doc', '=', $id)
            ->select('id_doc as id_doc',
                      'version_proceso as version_proceso',
                  	  'fecha_inicio as fecha_inicio',
                  	  'fecha_fin as fecha_fin',
                  	  'num_cambios as num_cambios',
                  	  'num_participantes as num_participantes',
                  	  'documentacion.id_proceso as id_proceso',
                  	  'proceso.nombre as proceso_nombre')
      		->first();


          $documentos = DB::table('documento')
        ->join('users', 'users.id', '=', 'documento.autor')
              ->select('documento.titulo as titulo',
                 'documento.fecha as fecha',
                 'documento.cuerpo as cuerpo',
                 'users.nombre as nombre',
                 'users.apellido as apellido',
                 'documento.id_doc as id_doc',
                 'documento.num_documento as num_documento')
            ->paginate(15);


          $archivos = DB::table('archivo')
        ->join('users', 'users.id', '=', 'archivo.autor')
              ->select('archivo.titulo as titulo',
                 'archivo.fecha as fecha',
                 'archivo.archivo as archivo',
                 'users.nombre as nombre',
                 'users.apellido as apellido',
                 'archivo.id_doc as id_doc',
                 'archivo.num_archivo as num_archivo')
            ->paginate(15);

			return view('documentacion.show', ['documentacion'=> $documentacion, 'documentos'=> $documentos, 'archivos'=> $archivos]);
	}

  
}