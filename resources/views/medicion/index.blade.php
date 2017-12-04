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
					{{Form::Open(array('action'=>array('MedicionController@destroy', $medi->id), 'method'=>'delete', 'id'=>$medi->id.'-destroy' ))}}
			            <input type="hidden" name="_method" value="DELETE">
			            <a onclick="eliminar({{$medi->id}})" ><i class="icon-remove"></i></a>
			        {{ Form::close() }}
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


<script type="text/javascript">

  function eliminar(id){


    swal({
      title: '¿Seguro que desea eliminar esta medición?',
      text: "Una vez eliminado, no se podrá recuperar",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, elimínalo!'
    }).then((result) => {
      if (result.value) {
        document.getElementById(id+'-destroy').submit();
      }
    })

  }

</script>


@endsection