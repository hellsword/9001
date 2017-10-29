<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proceso extends Model
{
    public $timestamps = false;
	
    protected $table='proceso'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_proceso'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'nombre', 'id_responsable', 'metas', 'implementacion', 'tiempo_medicion', 'medicion', 'anotacion_mejora', 'cod_area'
    ];
}
