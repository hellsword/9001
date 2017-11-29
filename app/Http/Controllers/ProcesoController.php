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
            ->join('users', 'proceso.id_responsable', '=', 'users.id')
            ->select('proceso.id_proceso as id_proceso',
                      'proceso.nombre as nombre',
                      'users.nombre as nombre_responsable',
                      'users.apellido as apellido_responsable',
                      'proceso.metas as metas',
                      'proceso.implementacion as implementacion',
                      'proceso.tiempo_medicion as tiempo_medicion',
                      'proceso.cod_area as cod_area')
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


     public function show($id) 
    {

          $proceso= DB::table('proceso')
            ->join('users', 'proceso.id_responsable', '=', 'users.id')
            ->join('area_procesos', 'proceso.cod_area', '=', 'area_procesos.cod_area')
            ->where('proceso.id_proceso', '=', $id)
            ->select('proceso.id_proceso as id_proceso',
                      'proceso.nombre as nombre',
                      'users.nombre as nombre_responsable',
                      'users.apellido as apellido_responsable',
                      'proceso.metas as metas',
                      'proceso.implementacion as implementacion',
                      'proceso.tiempo_medicion as tiempo_medicion',
                      'area_procesos.nombre as area')
          ->first();

          $documentacion = DB::table('documentacion')
          ->join('proceso', 'proceso.id_proceso', '=', 'documentacion.id_proceso')
          ->where('documentacion.id_proceso', '=', $id)
            ->select('id_doc as id_doc',
                      'version_proceso as version_proceso',
                      'fecha_inicio as fecha_inicio',
                      'fecha_fin as fecha_fin',
                      'num_cambios as num_cambios',
                      'num_participantes as num_participantes',
                      'documentacion.id_proceso as id_proceso',
                      'proceso.nombre as proceso_nombre')
          ->first();


          $objetivo= DB::table('objetivo')
            ->where('id_proceso', '=', $id)
            ->select('id_objetivo as id_objetivo',
                      'to_make as to_make',
                      'resources as resources',
                      'tipo_indicador as tipo_indicador',
                      'id_proceso as id_proceso')
            ->paginate(5);

        return view('procesos.show', ['proceso'=> $proceso, 'documentacion'=> $documentacion, 'objetivo'=> $objetivo]);
    }



    public function edit($id)
    {

      $areas=DB::table('area_procesos')->get();

      return view("procesos.edit", ["proceso"=>Proceso::findOrFail($id), 'areas'=> $areas]);  
    }

    public function update(Request $request, $id)
    {

      try {

        DB::beginTransaction();
      
        $proceso = Proceso::findOrFail($id);
        $proceso->nombre=$request->get('nombre');
        $proceso->id_responsable=$request->get('id_responsable');
        $proceso->metas=$request->get('metas');
        $proceso->implementacion=$request->get('implementacion');
        $proceso->tiempo_medicion=$request->get('tiempo_medicion');
        $proceso->cod_area=$request->get('cod_area');
        $proceso->update();  
        
        $documentacion = DB::table('documentacion')->where('id_proceso', $id)->first();
        Documentacion::where('id_proceso', $id)
              ->update(['num_cambios' => $documentacion->num_cambios+1]);

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
		})->where('tipo', '=', 'personal')->take(6)->get();
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
