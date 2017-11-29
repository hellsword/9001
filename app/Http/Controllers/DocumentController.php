<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Document;
use App\Http\Requests\DocumentRequest;

class DocumentController extends Controller
{
	public function index(){
			$documents = document::orderBy('id','DESC')->paginate();
			return view('documents.index',compact('documents'));
		}


	public function show($id){
			$document = Document::find($id);
			return view('documents.show', compact('document'));
	}

	public function destroy($id){
			$document = Document::find($id);
			$document->delete();

			return back()->with('info', 'El documento fue eliminado');
	}

	public function edit($id){
			$document = Document::find($id);
			return view('documents.edit', compact('document'));
	}

	public function create(){
		return view('documents.create');
	}

	public function store(DocumentRequest $request){
		
		 $document = new Document;
		 $document->version = $request->version;
		 $document->titulo = $request->titulo;
		 $document->cuerpo = $request->cuerpo;
		 $document->fecha = $request->fecha;
		 $document->autor = $request->autor;

		$document->save(); 

		return redirect()->route('documents.index')->with('info','El documento ha sido creado y guardado');

	}

		public function update(DocumentRequest $request, $id){
		 $document = Document::find($id);
		 $document->version = $request->version;
		 $document->titulo = $request->titulo;
		 $document->cuerpo = $request->cuerpo;
		 $document->fecha = $request->fecha;
		 $document->autor = $request->autor;

		$document->save(); 

		return redirect()->route('documents.index')->with('info','El documento ha sido actualizado');
	}
}
