<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medicion extends Model
{

	public $timestamps = false;
	
    protected $table='medicions'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id'; //asignamos la PK de nuestra tabla.

     protected $fillable = [
        'id_proceso', 'fecha_medicion', 'detalles', 'anotacion_mejora', 
    ];
}
