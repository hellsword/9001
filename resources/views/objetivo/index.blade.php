@extends('layouts.tema')
@section('contenido')
<div class="pagetitle">
    <h1>Lista de objetivos </h1>
</div>

<a href="{{url('/nuevo_objetivo')}}"><button class="btn btn-success">Crear objetivo</button></a>

<div class="maincontent">
	<div class="contentinner">
		<table class="table table-striped table-bordered table-condensed table-hover">
			     <tr">
            <td>Id</td>
            <td>Acción a realizar</td>
            <td>Recursos</td>
            <td>Tipo de indicador</td>
            <td>ID del proceso</td>
            <td></td>
            </tr>

            @foreach($objetivo as $item)
           <tr>
           <td>{{$item->id_objetivo}}</td>
           <td>{{$item->to_make}}</td>
           <td>{{$item->resources}}</td>
           <td>{{$item->tipo_indicador}}</td>
           <td>{{$item->id_proceso}}</td>
           <td> <a href="{{URL::action('ObjetivoController@edit',$item->id_objetivo)}}"><i class="icon-edit"></i></a><a href="" data-target="#modal-delete-{{$item->id_objetivo}}" data-toggle="modal" onclick="no_css()"><i class="icon-remove"></i></a> </td>
           </tr>
           @include('objetivo.modal')
           @endforeach
		</table>
		{{$objetivo->render()}}
	</div>
</div>

<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>
@endsection