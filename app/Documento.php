<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
	public $timestamps = false;
	
    protected $table='documento'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_doc, num_documento'; //asignamos la PK de nuestra tabla.

     protected $fillable = [
        'titulo', 'cuerpo', 'fecha', 'autor',
    ];
}
