<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Archivo extends Model
{
    public $timestamps = false;
	
    protected $table='archivo'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_doc, num_archivo'; //asignamos la PK de nuestra tabla.

     protected $fillable = [
        'autor', 'fecha', 'archivo', 'archivo_name', 'archivo_mime', 'archivo_size' 
    ];
}
