@extends('layout')

@section('content')

<div class="col-sm-8">
<h2>
	<td> <a href="{{ route('medicion.edit', $medicion->id) }}" class="btn btn-default pull-right">editar</a> </td>

	{{ $medicion->fecha_medicion }}
</h2>
	<p>
		{{ $medicion->detalles }}
	</p>
		<p>
		{{ $medicion->antoacion_mejora }}

	</p>




</div>


@include('medicion.fragment.aside')
<div class="col-sm-4">
	

</div>
@endsection