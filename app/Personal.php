<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    public $timestamps = false;
	
    protected $table='personal'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_usuario'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'ocupacion', 'horarios',
    ];
}
