<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListaContacto extends Model
{
    public $timestamps = false;
	
    protected $table='lista_contactos'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id_contacto,id_usuario'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        //
    ];
}
