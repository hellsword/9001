@extends('layouts.tema')

@section('contenido')

<div class="col-sm-8">
	<h2>Listado de Mediciones
		<a href="{{ route('medicion.create') }}" class="btn btn-primary pull-right">NUEVO</a>
	</h2>
	@include('medicion.fragment.info')
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th width="20px">ID</th>
				<th>Fecha medicion</th>
				<th>Detalles</th>
<!-- 				<th>Cuerpo</th> -->
				<th>Anotacion Mejora</th>
				<th colspan="3">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			@foreach($medicion as $medi)
				<tr>
					<td>{{ $medi->id }}</td>
					<td>{{ $medi->fecha_medicion }}</td>
					<td>{{ $medi->detalles }}</td>
			
					<td>{{ $medi->anotacion_mejora }}</td>
					<td> <a href="{{ route('medicion.show', $medi->id) }}">ver</a> </td>
					<td> <a href="{{ route('medicion.edit', $medi->id) }}">editar</a> </td>
					<td>
						<form action="{{ route('medicion.destroy', $medi->id) }}" method="POST">
						{{ csrf_field() }}
						<input type="hidden" name="_method" value="DELETE">
						<button class="btn bnt-link">borrar</button>
						</form>
					</td>
				</tr>
			@endforeach
		</tbody>

	</table>

	{!! $medicion->render() !!}
</div>

<div class="col-sm-4">
	@include('medicion.fragment.aside')
</div>

@endsection