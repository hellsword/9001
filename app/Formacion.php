<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Formacion extends Model
{
    public $timestamps = false;
	
    protected $table='formacion'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_usuario'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'aniosexperiencia', 'Ntrabajos', 'grado', 'Cursosodiplomados', 'recomendaciones', 'curriculum',
    ];
}
