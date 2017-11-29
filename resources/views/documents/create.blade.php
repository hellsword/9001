@extends('layout')

@section('content')

<div class="col-sm-8">
<h2>
	Nuevo documento
	<td> <a href="{{ route('documents.index') }}" class="btn btn-default pull-right">Listado</a> </td>


</h2>
		@include('documents.fragment.error')

	{!! Form::open(['route' => 'documents.store']) !!}
	
	@include('documents.fragment.form')




	{!! Form::close() !!}</div>


@include('documents.fragment.aside')
<div class="col-sm-4">
	

</div>
@endsection