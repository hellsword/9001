@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Área de Documentaciones</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Proceso</td>
        <td>Versión</td>
        <td>Fecha inicio</td>
        <td>Fecha fin</td>
        <td>N° cambios</td>
        <td>N° participantes</td>
        <td>Acciones</td>
       </tr>
      @foreach($documentaciones as $documentacion)
        <tr>
        <td>{{$documentacion->proceso_nombre}}</td>
        <td>{{$documentacion->version_proceso}}</td>
        <td>{{$documentacion->fecha_inicio}}</td>
        <td>{{$documentacion->fecha_fin}}</td>
        <td>{{$documentacion->num_cambios}}</td>
        <td>{{$documentacion->num_participantes}}</td>
        <td> <a href="{{URL::action('DocumentacionController@show',$documentacion->id_doc)}}"><i class="icon-eye-open"></i></a> <a href="{{URL::action('DocumentacionController@edit',$documentacion->id_doc)}}"><i class="icon-edit"></i></a> </td>
        </tr>
       @endforeach
       </table>
       {{$documentaciones->render()}}

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection