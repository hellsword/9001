<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

use DB;
use PDF;

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
			 if ($request->get('text_area') == '') {
			 	alert()->error('El campo "Cuerpo de Documento" no puede estar vacío')->persistent('Cerrar');
			 	return Redirect::to('/documentacion/'.$request->get('id_doc'));
			 }
			 $document->cuerpo = $request->get('cuerpo');
			 $document->fecha = $request->get('fecha');
			 $document->autor = $request->get('autor');

			$document->save(); 

	        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      //return Redirect::to('/servicios');  

      	alert()->success('El documento ha sido creado y almacenado')->persistent('Cerrar');
		return Redirect::to('documentacion/'.$request->get('id_doc'));

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
	        			 'documento.num_documento as num_documento',
	        			 'documento.id_doc as id_doc')
	      		->first();

			return view('documento.show', ['documento'=> $documento]);
	}


	public function destroy($num_documento, Request $request)
    {

      DB::table('documento')->where('id_doc', '=', $request->get('id_doc'))->where('num_documento', '=', $num_documento)->delete();

      alert()->warning('Documento eliminado')->persistent('Cerrar');
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

        alert()->success('Documento actualizado')->persistent('Cerrar');
        return Redirect::to('documentacion/'.$id);
    }



    public function downloadPDF(Request $request)
    {

    	$documento = DB::table('documento')
				->join('users', 'users.id', '=', 'documento.autor')
				->where('documento.num_documento', '=', $request->get('num_documento'))
	            ->select('documento.titulo as titulo',
	        			 'documento.fecha as fecha',
	        			 'documento.cuerpo as cuerpo',
	        			 'users.nombre as nombre',
	        			 'users.apellido as apellido',
	        			 'documento.num_documento as num_documento',
	        			 'documento.id_doc as id_doc')
	      		->first();
/*
    	$pdf = PDF::loadView('documento.pdf', ['documento'=> $documento]);
		return $pdf->download($documento->titulo.'.pdf');
*/


		$phpWord = new \PhpOffice\PhpWord\PhpWord();

	// Every element you want to append to the word document is placed in a section.
	// To create a basic section:
	$section = $phpWord->addSection();


	// After creating a section, you can append elements:
	$section->addText($documento->titulo, array('name'=>'Tahoma', 'size'=>16, 'bold'=>true, 'alignment' => 'center'));
	$section->addText($documento->nombre.' '.$documento->apellido);
	$section->addText($documento->fecha);
	\PhpOffice\PhpWord\Shared\Html::addHtml($section, $documento->cuerpo);

	// Finally, write the document:
        // The files will be in your public folder
	$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
	$objWriter->save('aloha.docx');
	return response()->download('aloha.docx');
	
		
    }


}
