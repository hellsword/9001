<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\Guard;

use App\User;
use App\contacto;

use DB;

class ContactoController extends Controller
{
     public function show($id) 
    {
        $contac = DB::table('contacto')
            ->where('id','=',$id)
            ->select('medio as medio',
                    'contacto as contacto'
                    )
            ->paginate(5);
        return view('contactos.show')->with('contac',$contac);
    }
}
