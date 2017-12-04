<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;


use App\Medicion;

#comentario
class MedicionController extends Controller
{
	public function index(){
			$medicion = Medicion::orderBy('id','DESC')->paginate();
			return view('medicion.index',compact('medicion'));
		}


	public function show($id){
			$medicion = Medicion::find($id);
			return view('medicion.show', compact('medicion'));
	}

	public function destroy($id){
			$medicion = Medicion::find($id);
			$medicion->delete();

			alert()->warning('Medición eliminada')->persistent('Cerrar');
			return back()->with('info', 'La medicion fue eliminada');
	}

	public function edit($id){
			$medicion = Medicion::find($id);
			return view('medicion.edit', compact('medicion'));
	}

	public function create(){
		return view('medicion.create');
	}

	public function store(Request $request){
		
		 $medicion = new Medicion;
		 $medicion->id_proceso = $request->id_proceso;
		 $medicion->fecha_medicion = $request->fecha_medicion;
		 $medicion->detalles = $request->detalles;
		 $medicion->anotacion_mejora = $request->anotacion_mejora;

		$medicion->save(); 

		alert()->success('Medición creada y almacenada')->persistent('Cerrar');
		return redirect()->route('medicion.index')->with('info','La medicion ha sido creada y guardada');

	}

		public function update(Request $request, $id){
		 $medicion = Medicion::find($id);
		 $medicion->id_proceso = $request->id_proceso;
		 $medicion->fecha_medicion = $request->fecha_medicion;
		 $medicion->detalles = $request->detalles;
		 $medicion->anotacion_mejora = $request->anotacion_mejora;

		$medicion->save(); 

		alert()->success('Medición actualizada')->persistent('Cerrar');
		return redirect()->route('medicion.index')->with('info','La medicion ha sido actualizada');
	}


}
