<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use DB;


use App\Medicion;

#comentario
class MedicionController extends Controller
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

			$medicion= DB::table('medicions')
            ->join('proceso', 'proceso.id_proceso', '=', 'medicions.id_proceso')
            ->select('proceso.nombre as nombre',
            		  'medicions.id as id',
                      'medicions.fecha_medicion as fecha_medicion',
                      'medicions.id_usuario as id_usuario')
      		->paginate(15);

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
		
		if (DB::table('proceso')->where('id_proceso', $request->id_proceso)->count() == 0) {
	        alert()->error('El proceso seleccionado no existe o no ha seleccionado ningún proceso')->persistent('Cerrar');
	        return Redirect::to('medicion');  
	      }

		 $medicion = new Medicion;
		 $medicion->id_proceso = $request->id_proceso;
		 $medicion->fecha_medicion = $request->fecha_medicion;
		 $medicion->detalles = $request->detalles;
		 $medicion->anotacion_mejora = $request->anotacion_mejora;
		 $medicion->id_usuario = $this->auth->user()->id;

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
