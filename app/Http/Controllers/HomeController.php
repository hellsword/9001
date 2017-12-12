<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Response;
use Illuminate\Support\Facades\Input;

use App\Instrucciones;

use Image; 
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $procesos = DB::table('proceso')
         ->join ('users', 'proceso.id_responsable', '=' ,'users.id')   
         ->join ('documentacion', 'proceso.id_proceso', '=' ,'documentacion.id_proceso')   
         ->select('users.id', 'proceso.nombre as nombre_proceso', 'users.nombre as nombre_user', 'users.apellido as apellido_user','proceso.id_proceso as id_proceso', 'documentacion.fecha_inicio as fecha_inicio')
         ->take(5)
         ->orderBy('proceso.id_proceso', 'desc')
         ->get();


         $instrucciones = DB::table('instrucciones')->first();

        return view('home', ['procesos'=> $procesos, 'instrucciones'=> $instrucciones]);
    }


    public function cambiar_imagen(Request $request){


        $file = Input::file('imagen');
        $path = public_path('imagenes/imagen.jpg');
        $imagen = Image::make($file->getRealPath())->resize(1280, 820);
        $imagen->save($path);

         return Redirect::to('/home');
    }



    public function actualizar_instrucciones(Request $request){


        Instrucciones::where('id', 1)
              ->update(['titulo' => $request->get('titulo'), 'descripcion' => $request->get('descripcion')]);

         return Redirect::to('/home');
    }
}
