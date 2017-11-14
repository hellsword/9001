<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documentacion extends Model
{
    public $timestamps = false;
	
    protected $table='documentacion'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_doc'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'vesion_proceso', 'fecha_inicio', 'fecha_fin', 'num_cambios', 'num_participantes', 'proceso_id_area',
    ];
}
