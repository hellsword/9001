<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

//Modelos
use App\User;
use App\Personal;
use App\Contacto;
use App\Formacion;

use DB;

class FormacionController extends Controller
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
      $formacion = Formacion::find($this->auth->user()->id);

      if($formacion->id_usuario != null){
        //$formacion = 'no es null';
        return view('formacion.edit', ["formacion"=>Formacion::findOrFail($this->auth->user()->id)]); 
      }
      else
      	return view('formacion.create');
    }



    public function store(Request $request){ 

      try {

        DB::beginTransaction();
      
        //Se agrega la informacion basica del usuario
        $formacion = new Formacion;
        $formacion->id_usuario = $this->auth->user()->id;
        $formacion->aniosexperiencia=$request->get('aniosexperiencia');
        $formacion->Ntrabajos=$request->get('Ntrabajos');
        $formacion->grado=$request->get('grado');
        $formacion->Cursosodiplomados=$request->get('Cursosodiplomados');
        $formacion->recomendaciones=$request->get('recomendaciones');
        $formacion->curriculum = $request->get('curriculum');
        $formacion->save(); 

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      return Redirect::to('formacion');  

    }



    public function create()
    {
    	return view('formacion.create');
    }

    public function edit($id)
    {
    	return view('formacion.edit', ["formacion"=>Formacion::findOrFail($this->auth->user()->id)]);  
    }


}
