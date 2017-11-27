@extends('layouts.tema')
@section('contenido')

<div class="maincontent">
	<div class="contentinner">
		<table class="table table-striped table-bordered table-condensed table-hover">
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
			</tr>
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