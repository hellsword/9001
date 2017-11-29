<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;
use Response;
use Illuminate\Support\Facades\Input;

//Modelos

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

        return view('home', ['procesos'=> $procesos]);
    }
}
