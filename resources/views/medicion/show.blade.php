@extends('layouts.tema')

@section('contenido')


<div class="pagetitle">
    <h1>Vista detallada del proceso </h1>
</div><!--pagetitle-->
<h2>
	<td> <a href="{{ route('medicion.edit', $medicion->id) }}" class="btn btn-default pull-left">editar</a> </td>
</h2>



<div class="maincontent">
    <div class="contentinner">
        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                
                <p>
                  <label>ID del proceso:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{ $medicion->id_proceso }}" readonly="" /></span>
                </p>

                <p>
                    <label>Fecha de medición:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{ $medicion->fecha_medicion }}" readonly="" /></span>
                </p>

                <p>
                    <label>Detalles:</label>
                    <span class="field"><textarea id="metas" name="metas" cols="80" rows="10" class="span5" style="resize: vertical" readonly="">{{ $medicion->detalles }}</textarea></span>
                </p>

                <p>
                    <label>Anotación de mejoras:</label>
                    <span class="field"><textarea id="metas" name="metas" cols="80" rows="10" class="span5" style="resize: vertical" readonly="">{{ $medicion->anotacion_mejora }}</textarea></span>
                </p>
            {!!Form::close()!!}
        </div>
    </div>
</div>


@endsection