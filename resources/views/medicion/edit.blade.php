@extends('layout')

@section('content')

<div class="col-sm-8">
<h2>
	Editar Medición
	<td> <a href="{{ route('medicion.index') }}" class="btn btn-default pull-right">Listado</a> </td>


</h2>
	

	
	@include('medicion.fragment.error')


	{!! Form::model($medicion, ['route'=> ['medicion.update', $medicion->id], 'method' => 'PUT']) !!}
	
	@include('medicion.fragment.form')

	{!! Form::close() !!}



</div>


@include('medicion.fragment.aside')
<div class="col-sm-4">
	

</div>
@endsection