@extends('layouts.tema')

@section('contenido')

<div class="col-sm-8">
<h2>
	Nueva Medición
	<td> <a href="{{ route('medicion.index') }}" class="btn btn-default pull-right">Listado</a> </td>


</h2><br>
		@include('medicion.fragment.error')

	{!! Form::open(['route' => 'medicion.store']) !!}
	
	@include('medicion.fragment.form')




	{!! Form::close() !!}</div>


@include('medicion.fragment.aside')
<div class="col-sm-4">
	

</div>
@endsection