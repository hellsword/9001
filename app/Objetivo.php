<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Objetivo extends Model
{
    public $timestamps = false;
	
    protected $table='objetivo'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_objetivo'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'to_make', 'resources','tipo_indicador', 'id_usuario',
    ];
}
