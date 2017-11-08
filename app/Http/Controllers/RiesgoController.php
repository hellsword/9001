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
      $riesgos= DB::table('riesgos')
            ->select('id_riesgo as id_riesgo',
                      'titulo as titulo',
                      'descripcion as descripcion',
                      'id_proceso as id_proceso')
      ->paginate(5);

      return view('riesgos.index')->with('riesgos',$riesgos);
    }



    public function create()
    {

      //$areas=DB::table('area_procesos')->get();

      //return view('procesos.create', ['areas'=> $areas]);
    	return view('riesgos.create');
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
