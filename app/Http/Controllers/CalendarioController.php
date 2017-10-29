<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CalendarioController extends Controller
{
    public function index(){
    	return view('calendario.index');
    }
}
