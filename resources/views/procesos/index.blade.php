@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Lista de procesos</h1>
</div><!--pagetitle-->

<a href="{{url('/nuevo_proceso')}}"><button class="btn btn-success">Nuevo proceso</button></a>


<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Nombre</td>
        <td>Responsable</td>
        <td>Implementación</td>
        <td>Metas</td>
        <td>Area</td>
        <td>Tiempo de medición</td>
        <td colspan="3">&nbsp;</td>
       </tr>
      @foreach($procesos as $proceso)
        <tr>
        <td>{{$proceso->nombre}}</td>
        <td>{{$proceso->nombre_responsable}} {{$proceso->apellido_responsable}}</td>
        <td>{{$proceso->implementacion}}</td>
        <td>{{$proceso->metas}}</td>
        <td>{{$proceso->cod_area}}</td>
        <td>{{$proceso->tiempo_medicion}} días</td>
        <td> <a href="{{URL::action('ProcesoController@show',$proceso->id_proceso)}}" ><i class="icon-eye-open"></i></a>  </td>
        @if(Auth::user()->tipo=='admin' OR Auth::user()->id == $proceso->id_responsable)
          <td> <a href="{{URL::action('ProcesoController@edit',$proceso->id_proceso)}}"><i class="icon-edit"></i></a>   </td>
          <td>
            {{Form::Open(array('action'=>array('ProcesoController@destroy', $proceso->id_proceso), 'method'=>'delete', 'id'=>$proceso->id_proceso.'-destroy' ))}}
              <input type="hidden" name="_method" value="DELETE">
              <a onclick="eliminar({{$proceso->id_proceso}})" ><i class="icon-remove"></i></a>
            {{ Form::close() }}
          </td>
        @endif
        </tr>
       @endforeach
       </table>
       {{$procesos->render()}}

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }



  function eliminar(id_proceso){


    swal({
      title: '¿Seguro que desea eliminar este proceso?',
      text: "Una vez eliminado, no se podrá recuperar",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, elimínalo!'
    }).then((result) => {
      if (result.value) {
        document.getElementById(id_proceso+'-destroy').submit();
      }
    })

  }

</script>

@endsection