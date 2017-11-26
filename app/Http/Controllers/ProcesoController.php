<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Response;
use Illuminate\Support\Facades\Input;

//Modelos
use App\AreaProceso;
use App\Proceso;
use App\Personal;
use App\User;
use App\Documentacion;

use DB;

class ProcesoController extends Controller
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
      $procesos= DB::table('proceso')
            ->select('id_proceso as id_proceso',
                      'nombre as nombre',
                      'id_responsable as id_responsable',
                      'metas as metas',
                      'implementacion as implementacion',
                      'tiempo_medicion as tiempo_medicion',
                      'cod_area as cod_area')
      ->paginate(5);

      return view('procesos.index')->with('procesos',$procesos);
    }


    public function create()
    {

      $areas=DB::table('area_procesos')->get();

      return view('procesos.create', ['areas'=> $areas]);
    }




    public function store(Request $request){ 

      try {

        DB::beginTransaction();
      
      	//Se agrega la informacion del proceso
        $proceso = new Proceso;
        $proceso->nombre=$request->get('nombre');
        $proceso->id_responsable=$request->get('id_responsable');
        $proceso->metas=$request->get('metas');
        $proceso->implementacion=$request->get('implementacion');
        $proceso->tiempo_medicion=$request->get('tiempo_medicion');
        $proceso->cod_area=$request->get('cod_area');
        $proceso->save(); 


       
        $documentacion = new Documentacion;
        $documentacion->version_proceso= '1.0.0';
        $documentacion->fecha_inicio= date("d/m/Y");
        $documentacion->fecha_fin= '';
        $documentacion->num_cambios= 0;
        $documentacion->num_participantes= 1;
        $documentacion->id_proceso= $proceso->id_proceso;
        $documentacion->save(); 
        

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      return Redirect::to('procesos');  

    }



  public function autocomplete_responsable()
	{
		$queries = User::where(function($query)
		{
	    	$term = Input::get('term');
	    	$query->where('id', 'like', '%'.$term.'%')->orWhere('nombre', 'like', '%'.$term.'%')->orWhere('apellido', 'like', '%'.$term.'%');
		})->take(6)->get();
		foreach ($queries as $query)
		{
		    $results[] = [ 'id' => $query->id."  ".$query->nombre."  ".$query->apellido, 'value' => $query->id];
		}
		return Response::json($results);
	
	}


/*
	public function autocomplete_areaProceso()
	{
		$queries = AreaProceso::where(function($query)
		{
	    	$term = Input::get('term');
	    	$query->where('cod_area', 'like', '%'.$term.'%')->orWhere('nombre', 'like', '%'.$term.'%');
		})->take(6)->get();
		foreach ($queries as $query)
		{
		    $results[] = [ 'id' => $query->cod_area."  ".$query->nombre, 'value' => $query->cod_area];
		}
		return Response::json($results);
	
	}
*/


}
