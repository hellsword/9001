<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Riesgo extends Model
{
    public $timestamps = false;
	
    protected $table='riesgos'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_riesgo'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'id_proceso','titulo', 'descripcion', 'id_usuario',
    ];
}
