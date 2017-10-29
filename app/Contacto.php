<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contacto extends Model
{
	public $timestamps = false;
	
    protected $table='contacto'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'medio','contacto',
    ];
}
