@extends('layout')

@section('content')

<div class="col-sm-8">
	<h2>Listado de Documentos
		<a href="{{ route('documents.create') }}" class="btn btn-primary pull-right">NUEVO</a>
	</h2>
	@include('documents.fragment.info')
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th width="20px">ID</th>
				<th>Versión</th>
				<th>Título</th>
<!-- 				<th>Cuerpo</th> -->
				<th>Fecha</th>
				<th>Autor</th>
				<th colspan="3">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			@foreach($documents as $document)
				<tr>
					<td>{{ $document->id }}</td>
					<td>{{ $document->version }}</td>
					<td>{{ $document->titulo }}</td>
			<!-- 		<td>{{ $document->cuerpo }}</td> -->
					<td>{{ $document->fecha }}</td>
					<td>{{ $document->autor }}</td>
					<td> <a href="{{ route('documents.show', $document->id) }}">ver</a> </td>
					<td> <a href="{{ route('documents.edit', $document->id) }}">editar</a> </td>
					<td>
						<form action="{{ route('documents.destroy', $document->id) }}" method="POST">
						{{ csrf_field() }}
						<input type="hidden" name="_method" value="DELETE">
						<button class="btn bnt-link">borrar</button>
						</form>
					</td>
				</tr>
			@endforeach
		</tbody>

	</table>

	{!! $documents->render() !!}
</div>

<div class="col-sm-4">
	@include('documents.fragment.aside')
</div>

@endsection