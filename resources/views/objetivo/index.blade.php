@extends('layouts.tema')
@section('contenido')
<div class="pagetitle">
    <h1>Lista de objetivos </h1>
</div>

<a href="{{url('/nuevo_objetivo')}}"><button class="btn btn-success">Crear objetivo</button></a>

<div class="maincontent">
	<div class="contentinner">
		<table class="table table-striped table-bordered table-condensed table-hover">
			     <tr>
        </tr>
           <tr style="background-color: black; color: white;">            
            <td>Acción a realizar</td>
            <td>Recursos</td>
            <td>Tipo de indicador</td>
            <td>ID del proceso</td>
            <td></td>
            </tr>

            @foreach($objetivo as $item)
           <tr>
           <td>{{$item->to_make}}</td>
           <td>{{$item->resources}}</td>
           <td>{{$item->tipo_indicador}}</td>
           <td>{{$item->id_proceso}}</td>
           <td> <a href="{{URL::action('ObjetivoController@edit',$item->id_objetivo)}}"><i class="icon-edit"></i></a>

            {{Form::Open(array('action'=>array('ObjetivoController@destroy', $item->id_objetivo), 'method'=>'delete', 'id'=>$item->id_objetivo.'-destroy' ))}}
            <input type="hidden" name="_method" value="DELETE">
            <a onclick="eliminar({{$item->id_objetivo}})" ><i class="icon-remove"></i></a>
            {{ Form::close() }}

            </td>
           </tr>
           @endforeach
		</table>
		{{$objetivo->render()}}
	</div>
</div>

<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }



  function eliminar(id_objetivo){

    swal({
      title: '¿Seguro que desea eliminar este objetivo?',
      text: "Una vez eliminado, no se podrá recuperar",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, elimínalo!'
    }).then((result) => {
      if (result.value) {
        document.getElementById(id_objetivo+'-destroy').submit();
      }
    })

  }

</script>
@endsection