<div class="form-group">
	{!! Form::label('version','Versión del Documento') !!}
	{!! Form::text('version', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::label('titulo','titulo del Documento') !!}
	{!! Form::text('titulo', null, ['class' =>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('cuerpo','cuerpo del Documento') !!}
	{!! Form::textarea('cuerpo', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::label('fecha','fecha del Documento') !!}
	{!! Form::text('fecha', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::label('autor','autor del Documento') !!}
	{!! Form::text('autor', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::submit('ENVIAR', ['class' => 'btn btn-primary']) !!}

</div>