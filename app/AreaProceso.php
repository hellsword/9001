<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AreaProceso extends Model
{
    public $timestamps = false;
	
    protected $table='area_procesos'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_area'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'nombre',
    ];
}
