<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Support\Facades\Input;

use DB;

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
            $file = Input::file('archivo');
            $doc = file_get_contents('data:application/pdf;base64,'.base64_encode($file));

            $archivo->archivo = $doc; 
            $archivo->save(); 

            DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

        return redirect()->route('documentacion.index')->with('info','El documento ha sido creado y guardado');

	}
}
