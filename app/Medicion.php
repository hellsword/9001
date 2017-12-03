<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medicion extends Model
{
     protected $fillable = [
        'id_proceso', 'fecha_medicion', 'detalles', 'anotacion_mejora',
    ];
}
