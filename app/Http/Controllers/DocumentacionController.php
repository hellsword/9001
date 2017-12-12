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
        ->join('documentacion', 'documentacion.id_doc', '=', 'documento.id_doc')
        ->where('documento.id_doc', '=', $id)
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
        ->join('documentacion', 'documentacion.id_doc', '=', 'archivo.id_doc')
        ->where('archivo.id_doc', '=', $id)
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

  public function edit($id)
  {

      $documentacion = Documentacion::findOrFail($id);
      $nombre_proceso = DB::table('proceso')
        ->where('id_proceso', '=', $documentacion->id_proceso)
              ->select('nombre as nombre')->first();

      return view("documentacion.edit", ["documentacion"=>$documentacion, "nombre_proceso"=>$nombre_proceso]);  
  }



  public function update(Request $request, $id)
    {

      if ($request->get('fecha_inicio') > $request->get('fecha_fin')) {
        alert()->error('La fecha inicial no puede ser mayor a la fecha de termino del proceso')->persistent('Cerrar');
        return Redirect::to('/documentacion');
      }

      $documentacion = Documentacion::findOrFail($id);
      $documentacion->version_proceso=$request->get('version_proceso');
      $documentacion->fecha_inicio=$request->get('fecha_inicio');
      $documentacion->fecha_fin=$request->get('fecha_fin');
      $documentacion->num_cambios=$request->get('num_cambios');
      $documentacion->num_participantes=$request->get('num_participantes');
      $documentacion->update();  

      alert()->success('Documentación actualizada')->persistent('Cerrar');
      return Redirect::to('/documentacion');
    }



    public function lista(Request $request){

         $documentos = DB::table('documento')
         ->join('documentacion', 'documentacion.id_doc', '=', 'documento.id_doc')
         ->join('users', 'users.id', '=', 'documento.autor')

         //Filtros
         ->where('users.id', 'LIKE', '%'.$request->get('id_usuario').'%')
         ->where('documentacion.id_proceso', 'LIKE', '%'.$request->get('id_proceso').'%')

              ->select('documento.titulo as titulo',
                 'documento.fecha as fecha',
                 'documento.cuerpo as cuerpo',
                 'users.nombre as nombre',
                 'users.apellido as apellido',
                 'documento.id_doc as id_doc',
                 'documento.num_documento as num_documento')
            ->get();


          $archivos = DB::table('archivo')
          ->join('documentacion', 'documentacion.id_doc', '=', 'archivo.id_doc')
          ->join('users', 'users.id', '=', 'archivo.autor')

          //Filtros
         ->where('users.id', 'LIKE', '%'.$request->get('id_usuario').'%')
         ->where('documentacion.id_proceso', 'LIKE', '%'.$request->get('id_proceso').'%')

              ->select('archivo.titulo as titulo',
                 'archivo.fecha as fecha',
                 'archivo.archivo as archivo',
                 'users.nombre as nombre',
                 'users.apellido as apellido',
                 'archivo.id_doc as id_doc',
                 'archivo.num_archivo as num_archivo')
            ->get();

            $tipo = $request->get('tipo');


          $personales = DB::table('personal')
          ->join('users', 'users.id', '=', 'personal.id_usuario')
            ->get();


          $procesos = DB::table('proceso')->get();

      return view("documentacion.lista", ["documentos"=>$documentos, "archivos"=>$archivos, "procesos"=>$procesos, "personales"=>$personales, "tipo"=>$tipo]); 
    }




  public function descarga_lista(Request $request){

//return '<textarea>'.$request->get('elementos').'</textarea>';
    $phpWord = new \PhpOffice\PhpWord\PhpWord();

  // Every element you want to append to the word document is placed in a section.
  // To create a basic section:
  $section = $phpWord->addSection();
  \PhpOffice\PhpWord\Shared\Html::addHtml($section, $request->get('elementos'));

  // Finally, write the document:
        // The files will be in your public folder
  $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
  $objWriter->save('listado.docx');
  return response()->download('listado.docx');
  
    
    }

  
}