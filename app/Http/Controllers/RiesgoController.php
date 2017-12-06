<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Response;
use Illuminate\Support\Facades\Input;

//Modelos
use App\Riesgo;
use App\Proceso;

use DB;

class RiesgoController extends Controller
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
      $riesgos = DB::table('riesgos as r')
         ->join ('proceso as p', 'r.id_proceso', '=' ,'p.id_proceso')   
         ->select('r.id_riesgo','p.id_proceso','p.nombre','r.titulo', 'r.descripcion', 'r.id_usuario as id_usuario')
         ->paginate(15);

      return view('riesgos.index')->with('riesgos',$riesgos);
    }



    public function create()
    {

    	return view('riesgos.create');
    }


    public function store(Request $request){ 

      try {

        DB::beginTransaction();


        if (DB::table('riesgos')->where('id_proceso', $request->get('id_proceso'))->count() == 0) {
          alert()->error('El proceso seleccionado no existe o no ha seleccionado ningún proceso')->persistent('Cerrar');
          return Redirect::to('riesgos');  
        }
      
        //Se agrega la informacion del riesgo
        $riesgo = new Riesgo;
        $riesgo->id_proceso=$request->get('id_proceso');
        $riesgo->titulo=$request->get('titulo');
        $riesgo->descripcion=$request->get('descripcion');
        $riesgo->id_usuario= $this->auth->user()->id;
        $riesgo->save(); 

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      alert()->success('Riesgo almacenado')->persistent('Cerrar');
      return Redirect::to('/riesgos');  

    }


    public function edit($id) 
    {
          $riesgos = DB::table('riesgos as r')
         ->join ('proceso as p', 'r.id_proceso', '=' ,'p.id_proceso')  
         ->where('r.id_riesgo', '=', $id) 
         ->select('r.id_riesgo','p.id_proceso','p.nombre','r.titulo', 'r.descripcion')
         ->first();

      return view('riesgos.edit')->with('riesgos',$riesgos);
    }



    public function update(Request $request, $id)
    {

      try {

        DB::beginTransaction();
      
        $riesgo = Riesgo::findOrFail($id);
        $riesgo->titulo=$request->get('titulo');
        $riesgo->descripcion=$request->get('descripcion');
        $riesgo->update();  

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      alert()->success('Riesgo actualizado con exito')->persistent('Cerrar');
      return Redirect::to('/riesgos');  
    }



    public function destroy($id)
    {
      $riesgo = Riesgo::find($id);
      $riesgo->delete();

      alert()->success('Riesgo eliminado')->persistent('Cerrar');
      return Redirect::to('/riesgos');
    }



    public function show($id) 
    {
          $riesgos = DB::table('riesgos as r')
         ->join ('proceso as p', 'r.id_proceso', '=' ,'p.id_proceso')  
         ->where('r.id_riesgo', '=', $id) 
         ->select('r.id_riesgo','p.id_proceso','p.nombre','r.titulo', 'r.descripcion')
         ->first();

      return view('riesgos.show')->with('riesgos',$riesgos);
    }




    public function autocomplete_proceso()
	{
		$queries = Proceso::where(function($query)
		{
	    	$term = Input::get('term');
	    	$query->where('id_proceso', 'like', '%'.$term.'%')->orWhere('nombre', 'like', '%'.$term.'%');
		})->take(6)->get();
		foreach ($queries as $query)
		{
		    $results[] = [ 'id' => $query->id_proceso."  ".$query->nombre, 'value' => $query->id_proceso."| ".$query->nombre];
		}
		return Response::json($results);
	
	}





}
