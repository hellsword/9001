<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Response;
use Illuminate\Support\Facades\Input;

//modelo
use App\Objetivo;
use App\Proceso;
use DB;

class ObjetivoController extends Controller
{
    public function index()
    {
      $objetivo= DB::table('objetivo')
            ->select('id_objetivo as id_objetivo',
                      'to_make as to_make',
                      'resources as resources',
                      'tipo_indicador as tipo_indicador',
                      'id_proceso as id_proceso')
      ->paginate(5);

      return view('objetivo.index')->with('objetivo',$objetivo);
      //return view('objetivo.index');
    }

     public function edit($id)
    {
      return view("objetivo.edit", ["objetivo"=>Objetivo::findOrFail($id)]);  
    }

     public function update(Request $request, $id)
    {


      $objetivo = Objetivo::findOrFail($id);
      $objetivo->to_make=$request->get('to_make');
      $objetivo->resources=$request->get('resources');
      $objetivo->tipo_indicador=$request->get('tipo_indicador');
      $objetivo->update();  

      alert()->success('Objetivo actualizado')->persistent('Cerrar');
      return Redirect::to('objetivo');
    }

    public function create(){
       return view('objetivo.create');
    }

    public function store(Request $request)
    {
    	 $objetivo = new Objetivo; 
    	 $objetivo->to_make=$request->get('to_make');
         $objetivo->resources=$request->get('resources');
         $objetivo->tipo_indicador=$request->get('tipo_indicador');
         $objetivo->id_proceso=$request->get('id_proceso');
         $objetivo->save();

         alert()->success('El Objetivo ha sido creado')->persistent('Cerrar');
         return Redirect::to('objetivo');  
    }


    public function destroy($id)
    {
      $objetivo = Objetivo::find($id);
      $objetivo->delete();

      alert()->success('Objetivo eliminado')->persistent('Cerrar');
      return Redirect::to('objetivo');
    }



    public function autocomplete_objetivo()
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
