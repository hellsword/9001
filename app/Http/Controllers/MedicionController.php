<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;


use App\Medicion;


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
		 $medicion->fecha_medicion = $request->fecha_medicion;
		 $medicion->detalles = $request->detalles;
		 $medicion->anotacion_mejora = $request->anotacion_mejora;

		$medicion->save(); 

		return redirect()->route('medicion.index')->with('info','La medicion ha sido creada y guardada');

	}

		public function update(Request $request, $id){
		 $medicion = Medicion::find($id);
		 $medicion->fecha_medicion = $request->fecha_medicion;
		 $medicion->detalles = $request->detalles;
		 $medicion->anotacion_mejora = $request->anotacion_mejora;

		$medicion->save(); 

		return redirect()->route('medicion.index')->with('info','La medicion ha sido actualizada');
	}
}
