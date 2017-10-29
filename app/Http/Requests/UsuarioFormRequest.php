<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id' => 'required|max:10',
            'nombre'=>'required|max:50',// asiganamos una variable nombre que sera obligatoria y tendra 50 caracteres. 'nombre' no es el nombre de la variable de nuestra BD sino 
            //el nombre que tendra en nuestro formulario
            'apellido'=>'max:50',
        ];
    }
}
