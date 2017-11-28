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
        <td>ID del Responsable</td>
        <td>Implementación</td>
        <td>Metas</td>
        <td>Area</td>
        <td>Tiempo de medición</td>
       </tr>
      @foreach($procesos as $proceso)
        <tr>
        <td>{{$proceso->nombre}}</td>
        <td>{{$proceso->id_responsable}}</td>
        <td>{{$proceso->implementacion}}</td>
        <td>{{$proceso->metas}}</td>
        <td>{{$proceso->cod_area}}</td>
        <td>{{$proceso->tiempo_medicion}} días</td>
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

</script>

@endsection