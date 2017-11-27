<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

use DB;

//Modelos
use App\Documento;

class DocumentoController extends Controller
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

    	return view("documento.create", ['documentacion_id'=> $documentacion_id]);
    }



    public function store(Request $request){
		
		try {

        DB::beginTransaction();
      
	        $document = new Documento;
			 $lastValue = DB::table('documento')->orderBy('num_documento', 'desc')->first();
	        if(count($lastValue) < 1){
	          $document->num_documento = 1;   
	        }else{
	          $document->num_documento = $lastValue->num_documento + 1 ;
	        }
			 $document->id_doc = $request->get('id_doc');
			 $document->titulo = $request->get('titulo');
			 $document->cuerpo = $request->get('cuerpo');
			 $document->fecha = $request->get('fecha');
			 $document->autor = $request->get('autor');

			$document->save(); 

	        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      //return Redirect::to('/servicios');  

		return Redirect::to('documentacion/'.$request->get('id_doc'))->with('info','El documento ha sido creado y guardado');

	}


	public function show($id){

			$documento = DB::table('documento')
				->join('users', 'users.id', '=', 'documento.autor')
				->where('documento.num_documento', '=', $id)
	            ->select('documento.titulo as titulo',
	        			 'documento.fecha as fecha',
	        			 'documento.cuerpo as cuerpo',
	        			 'users.nombre as nombre',
	        			 'users.apellido as apellido',
	        			 'documento.id_doc as id_doc')
	      		->first();

			return view('documento.show', ['documento'=> $documento]);
	}


	public function destroy($num_documento, Request $request)
    {

      DB::table('documento')->where('id_doc', '=', $request->get('id_doc'))->where('num_documento', '=', $num_documento)->delete();

      return Redirect::to('documentacion/'.$request->get('id_doc'));
    }


    public function edit($id)
    {

      $documento = DB::table('documento')
				->join('users', 'users.id', '=', 'documento.autor')
				->where('documento.num_documento', '=', $id)
	            ->select('documento.titulo as titulo',
	        			 'documento.fecha as fecha',
	        			 'documento.cuerpo as cuerpo',
	        			 'users.nombre as nombre',
	        			 'users.apellido as apellido',
	        			 'documento.id_doc as id_doc',
	        			 'documento.num_documento as num_documento')
	      		->first();

      return view('documento.edit', ['documento'=> $documento]);
    }


    public function update(Request $request, $id)
    {

        Documento::where('id_doc', '=', $id)->where('num_documento', '=', $request->get('num_documento'))
              ->update(['titulo' => $request->get('titulo'), 'cuerpo' => $request->get('cuerpo'), 'fecha' => $request->get('fecha')]);

        return Redirect::to('documentacion/'.$id);
    }


}
