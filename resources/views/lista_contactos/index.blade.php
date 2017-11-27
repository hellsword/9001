@extends('layouts.tema')
@section('contenido')

<a href="{{url('/listado')}}"><button class="btn btn-success">ver lista de contacto</button></a>
<center>@include('lista_contactos.search')</center>
 
<div class="maincontent">
	<div class="contentinner">
		<table class="table table-striped table-bordered table-condensed table-hover">
		<tr>
			<td>rut</td>
			<td>nombre</td>
			<td>apellido</td>
            <td></td>
		</tr>
		 @foreach($user as $item)
        <tr>
        <td>{{$item->rut}}</td>
        <td>{{$item->nombre}}</td>
        <td>{{$item->apellido}}</td>
        <td> <a href="{{URL::action('ListaContactoController@show',$item->id)}}" ><button class="btn btn-info">Agregar</button></a></td>
        </tr>
        @endforeach
		</table>
		{{$user->render()}}
	</div>
</div>

<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>
@endsection