@extends('layouts.tema')

@section('contenido')

<div class="col-sm-8">
	<h2>Listado de Mediciones
		<a href="/nueva_medicion" class="btn btn-primary pull-right">NUEVO</a>
	</h2><br>
	@include('medicion.fragment.info')
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th>Proceso</th>
				<th>Fecha medicion</th>
				<th colspan="3">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			@foreach($medicion as $medi)
				<tr>
					<td>{{ $medi->nombre }}</td>
					<td>{{ $medi->fecha_medicion }}</td>
					<td> <a href="{{ route('medicion.show', $medi->id) }}"><i class="icon-eye-open"></i></a> </td>
					<td> <a href="{{ route('medicion.edit', $medi->id) }}"><i class="icon-edit"></i></a> </td>
					<td>
						<form action="{{ route('medicion.destroy', $medi->id) }}" method="POST" id="formu">
						{{ csrf_field() }}
						<input type="hidden" name="_method" value="DELETE">
						<a onclick="document.getElementById('formu').submit()"><i class="icon-remove"></i></a>
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