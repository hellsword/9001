<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable
{
    use Notifiable;
    
    protected $table='users'; // asignamos la tabla a la cual hara referencia.

    protected $primaryKey='id'; //asignamos la PK de nuestra tabla.

    protected $fillable = [
        'rut','nombre','apellido', 'email','password','tipo','estado','fecha_nac'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
}
