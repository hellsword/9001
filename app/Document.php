<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
     protected $fillable = [
        'version', 'titulo', 'cuerpo', 'fecha', 'autor',
    ];
}
