@extends('layouts.tema')

@section('contenido')


<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<style type="text/css">
    li{
        background-color: black;
        color: white;
        list-style-type:none;
        padding: 1px;
    }
</style>

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