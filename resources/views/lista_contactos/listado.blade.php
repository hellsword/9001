@extends('layouts.tema')
@section('contenido')

<div class="maincontent">
	<div class="contentinner">
		<table class="table table-striped table-bordered table-condensed table-hover">
			<tr>
				<center>Mi lista de contactos</center>
            </tr>
			<tr>
				<td>Nombre</td>
			    <td>Apellido</td>
			    <td>Email</td>
			</tr>
			@foreach($usuarios as $item)
			<tr>
				<td>{{$item->nombre}}</td>
                <td>{{$item->apellido}}</td>
                <td>{{$item->email}}</td>
                <td><a href="{{URL::action('ContactoController@show',$item->id)}}"><i class="icon-eye-open"></i></a><a href="" data-target="#modal-delete-{{$item->id}}" data-toggle="modal" onclick="no_css()"><i class="icon-remove"></i></a></td>
			</tr>
			@include('lista_contactos.modal')
			@endforeach
		</table>
		{{$usuarios->render()}}
	</div>
</div>

<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>
@endsection