<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

//Modelos
use App\AreaProceso;

use DB;


class AreasProcesoController extends Controller
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
      $areas= DB::table('area_procesos')
            ->select('cod_area as cod_area',
                      'nombre as nombre')
      ->paginate(5);

      return view('areas_procesos.index')->with('areas',$areas);
    }
}
