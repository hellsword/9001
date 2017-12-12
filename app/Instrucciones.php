<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instrucciones extends Model
{
    public $timestamps = false;
	
    protected $table='instrucciones'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id'; //asignamos la PK de nuestra tabla.

     protected $fillable = [
        'titulo', 'descripcion',
    ];
}
