<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;

use DB;
use File;
use Validator;

//Modelos
use App\Archivo;

class ArchivoController extends Controller
{
     protected $auth;
   
    //vamos a declarar un constructor:
    public function __construct(Guard $auth)
    {
        //le diremos que gestione el acceso por usuario 
        $this->middleware('auth');
        $this->auth =$auth;
    }

    public function index(){

    }


    public function create(Request $request){

    	$documentacion_id = $request->get('documentacion_id');

    	return view("archivo.create", ['documentacion_id'=> $documentacion_id]);
    }



    public function store(Request $request){

        //Se lee el archivo
        $file = Input::file('archivo');

        if ($file->getSize()/1024/1024 > 10) {
            alert()->error('No puede subir archivos que pesen más de 10Mb')->persistent('Cerrar');
            return Redirect::to('documentacion/'.$request->get('id_doc'));
        }
        else{

    		try {

            DB::beginTransaction();
          
                $archivo = new Archivo;
                 $lastValue = DB::table('archivo')->orderBy('num_archivo', 'desc')->first();
                if(count($lastValue) < 1){
                  $archivo->num_archivo = 1;   
                }else{
                  $archivo->num_archivo = $lastValue->num_archivo + 1 ;
                }
                 $archivo->id_doc = $request->get('id_doc');
                 $archivo->titulo = $request->get('titulo');
                 $archivo->fecha = $request->get('fecha');
                 $archivo->autor = $request->get('autor');

                 //AQUI SE GUARDA EL ARCHIVO
                $aleatorio = str_random(50);
                $nombre = $aleatorio.'-'.$file->getClientOriginalName();
                $file->move('uploads', $nombre);
                $archivo->archivo = '/uploads/'.$nombre;
                $archivo->save(); 

                DB::commit();
              
          } catch (Exception $e) {
              DB::rollback();
          }
        }
        
        alert()->success('El archivo ha sido almacenado')->persistent('Cerrar');
        return Redirect::to('documentacion/'.$request->get('id_doc'));

	}


    public function destroy($num_archivo, Request $request)
    {
        $id_doc = $request->get('id_doc');
        $archivo = DB::table('archivo')->where('id_doc', '=', $request->get('id_doc'))->where('num_archivo', '=', $num_archivo)->first();
        $public_path = public_path();
        File::delete($public_path.$archivo->archivo);
        DB::table('archivo')->where('id_doc', '=', $request->get('id_doc'))->where('num_archivo', '=', $num_archivo)->delete();

        alert()->warning('Archivo eliminado')->persistent('Cerrar');
        return Redirect::to('documentacion/'.$id_doc);
    }

}
