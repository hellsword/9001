@extends('layout')

@section('content')

<div class="col-sm-8">
<h2>
	<td> <a href="{{ route('documents.edit', $document->id) }}" class="btn btn-default pull-right">editar</a> </td>

	{{ $document->titulo }}
</h2>
	<p>
		{{ $document->autor }}
	</p>
		<p>
		{{ $document->fecha }}

	</p>
	<p>
			{!! $document->cuerpo !!}

	</p>
	<p>
		Versión:{{ $document->version }}
	</p>



</div>


@include('documents.fragment.aside')
<div class="col-sm-4">
	

</div>
@endsection