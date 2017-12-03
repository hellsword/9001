<div class="form-group">
	{!! Form::label('id_proceso','ID Proceso ') !!}
	{!! Form::text('id_proceso', null, ['class' =>'form-control']) !!}

</div>
<div class="form-group">
	{!! Form::label('fecha_medicion','fecha medicion') !!}
	{!! Form::text('fecha_medicion', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::label('detalles','detalles') !!}
	{!! Form::textarea('detalles', null, ['class' =>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('anotacion_mejora','anotacion mejora') !!}
	{!! Form::textarea('anotacion_mejora', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::submit('ENVIAR', ['class' => 'btn btn-primary']) !!}

</div>

<!-- #comentario -->