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
    public function index()
    {
      $riesgos = DB::table('riesgos as r')
         ->join ('proceso as p', 'r.id_proceso', '=' ,'p.id_proceso')   
         ->select('r.id_riesgo','p.id_proceso','p.nombre','r.titulo', 'r.descripcion')
         ->paginate(5);

      return view('riesgos.index')->with('riesgos',$riesgos);
    }



    public function create()
    {

    	return view('riesgos.create');
    }


    public function store(Request $request){ 

      try {

        DB::beginTransaction();
      
        //Se agrega la informacion del riesgo
        $riesgo = new Riesgo;
        $riesgo->id_proceso=$request->get('id_proceso');
        $riesgo->titulo=$request->get('titulo');
        $riesgo->descripcion=$request->get('descripcion');
        $riesgo->save(); 

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      return Redirect::to('/home');  

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
		    $results[] = [ 'id' => $query->id_proceso."  ".$query->nombre, 'value' => $query->id_proceso];
		}
		return Response::json($results);
	
	}


}
