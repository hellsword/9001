<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

//bd
use App\User;
use App\ListaContacto;

use DB;

class ListaContactoController extends Controller
{
    protected $auth;
   
    //vamos a declarar un constructor:
    public function __construct(Guard $auth)
    {
        //le diremos que gestione el acceso por usuario 
        $this->middleware('auth');
        $this->auth =$auth;
    }

    public function index(Request $request)
    { 
      if ($request)
      {
        $id_activo=$this->auth->user()->id;
         
        $query=trim($request->get('searchText'));
        $user= DB::table('users as u')
            ->join ('lista_contactos as a', 'a.id_usuario', '=' ,'u.id')
            ->where('u.rut','LIKE','%'.$query.'%')
            ->where('u.id','!=',$id_activo)
            ->where('a.id_contacto','!=',$id_activo)
            ->select('u.id as id',
                      'u.rut as rut',
                      'u.nombre as nombre',
                      'u.apellido as apellido')
        ->paginate(10);
        return view('lista_contactos.index',["user"=>$user,"searchText"=>$query]);
      }
      
    }

    public function show($id){
      $lista_contactos= new ListaContacto;
      $lista_contactos->id_contacto= $this->auth->user()->id;
      $id_activo=$this->auth->user()->id;
      $id_c=$id;
      $lista_contactos->id_usuario=$id_c; //secundaria 
      $lista_contactos->save();
      return Redirect::to('lista_contactos');

      /*$usuarios= DB::table('users as u')
            ->join ('lista_contactos as a', 'a.id_usuario', '=' , 'u.id')
            ->where('a.id_contacto','=',$id_activo)
            ->select('u.nombre as nombre',
                    'u.apellido as apellido',
                    'u.email as email',
                    'u.id as id' 
                    )
            ->paginate(5);
      return view('lista_contactos.listado',["usuarios"=>$usuarios]);*/
      //return view('alumno.index', ["usuarios" => $usuarios, "searchText" => $query]);

    }

    public function listado()
    {
      $id_activo=$this->auth->user()->id;
      $usuarios= DB::table('users as u')
            ->join ('lista_contactos as a', 'a.id_usuario', '=' , 'u.id')
            ->where('a.id_contacto','=',$id_activo)
            ->select('u.nombre as nombre',
                    'u.apellido as apellido',
                    'u.email as email',
                    'u.id as id' 
                    )
            ->paginate(5);
      return view('lista_contactos.listado',["usuarios"=>$usuarios]);
    }

}
