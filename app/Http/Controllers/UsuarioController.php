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

class UsuarioController extends Controller
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
      $user= DB::table('users')
            ->select('id as id',
                      'rut as rut',
                      'nombre as nombre',
                      'apellido as apellido')
      ->paginate(15);

      return view('usuarios.index')->with('user',$user);
    }

    public function create(){
       return view('usuarios.create');
    }

    public function store(Request $request){ 

      $tipo = $request->get('tipo'); //captura el tipo de usuario

      try {

        DB::beginTransaction();
      
      	//Se agrega la informacion basica del usuario
        $usuario = new User;
        $usuario->rut=$request->get('rut');
        $usuario->nombre=$request->get('nombre');
        $usuario->apellido=$request->get('apellido');
        $usuario->email=$request->get('email');
        $usuario->password=bcrypt($request->get('password'));
        $usuario->tipo=$request->get('tipo');
        $usuario->estado = 'activo';
        $usuario->fecha_nac=$request->get('fecha_nac');
        $usuario->save(); 

        //Se agrega la informacion de contacto del usuario
        $contacto = new Contacto;
      	$contacto->id = $usuario->id;
      	$contacto->medio = 'telefono';
      	$contacto->contacto = $request->get('telefono'); 
        $contacto->save(); 
        
        $contacto = new Contacto;
      	$contacto->id = $usuario->id;
      	$contacto->medio = 'facebook';
      	$contacto->contacto = $request->get('facebook'); 
        $contacto->save(); 
        

        //Se agrega informacion extra si es necesario
        if($tipo == 'personal'){
          $personal = new Personal;
          $personal->id_usuario = $usuario->id;
          $personal->ocupacion = $request->get('ocupacion'); 
          $personal->horarios = $request->get('horarios'); 
          $personal->save(); 
        }

        $formacion = new Formacion;
        $formacion->id_usuario = $usuario->id;
        $formacion->aniosexperiencia = '';
        $formacion->Ntrabajos = 0;
        $formacion->grado = '';
        $formacion->Cursosodiplomados = '';
        $formacion->recomendaciones = '';
        $formacion->curriculum = '';
        $formacion->save();

        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      alert()->success('Recuerde llenar los datos de formación en la opción Formacion dentro del menú de usuario','Usuario creado exitosamente')->persistent('Cerrar');
      return Redirect::to('usuarios');  

    }



    public function edit($id)
    {
      return view("usuarios.edit", ["usuario"=>User::findOrFail($id)]);  
    }

    public function update(Request $request, $id)
    {

      //Actualiza el telefono
      Contacto::where('id', $id)->where('medio', 'telefono')->update(['contacto' => $request->get('telefono')]);
      //Actualiza facebook
      Contacto::where('id', $id)->where('medio', 'facebook')->update(['contacto' => $request->get('facebook')]);


      $usuario = User::findOrFail($id);
      $usuario->rut=$request->get('rut');
      $usuario->nombre=$request->get('nombre');
      $usuario->apellido=$request->get('apellido');
      $usuario->email=$request->get('email');
      $usuario->password=bcrypt($request->get('password'));
      $usuario->fecha_nac=$request->get('fecha_nac');
      $usuario->update();  

      alert()->success('Usuario actualizado')->persistent('Cerrar');
      return Redirect::to('home');
    }

    public function destroy($id)
    {
      $usuario = User::find($id);
      $usuario->delete();

      alert()->success('Usuario eliminado')->persistent('Cerrar');
      return Redirect::to('usuarios');
    }


    public function ver_perfil()
    {

      $contacto = DB::table('contacto')
            ->select('id as id',
                      'medio as medio',
                      'contacto as contacto')
            ->where('id','=', $this->auth->user()->id)
            ->paginate(2);

      return view('usuarios.ver_perfil', ["usuario"=>User::findOrFail($this->auth->user()->id)])->with('contacto', $contacto)->with(["personal"=>Personal::findOrFail($this->auth->user()->id)]);
    }


    public function ver_ficha(Request $request)
    {

      $contacto = DB::table('contacto')
            ->select('id as id',
                      'medio as medio',
                      'contacto as contacto')
            ->where('id','=', $request->get('id_usuario'))
            ->paginate(2);

      $formacion = Formacion::find($request->get('id_usuario'));

      return view('usuarios.ver_ficha', ["usuario"=>User::findOrFail($request->get('id_usuario'))])->with('contacto', $contacto)->with(["personal"=>Personal::findOrFail($request->get('id_usuario'))])->with('formacion', $formacion);
    }

}
