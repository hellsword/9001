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

		return redirect()->route('documentacion.index')->with('info','El documento ha sido creado y guardado');

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


	public function destroy($id_doc, $num_documento)
    {
      return $id_doc;
    }


}
