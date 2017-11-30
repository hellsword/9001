<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medicion extends Model
{
     protected $fillable = [
        'fecha_medicion', 'detalles', 'anotacion_mejora',
    ];
}
