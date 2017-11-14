@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Riesgos detectados</h1>
</div><!--pagetitle-->

<a href="{{url('/riesgos/create')}}"><button class="btn btn-success">Ingresar riesgo</button></a>

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Id riesgo</td>
        <td>Id Proceso</td>
        <td>Nombre proceso</td>
        <td>Titulo riesgo</td>
        <td>Descripción</td>
       </tr>
      @foreach($riesgos as $riesgo)
        <tr>
        <td>{{$riesgo->id_riesgo}}</td>
        <td>{{$riesgo->id_proceso}}</td>
        <td>{{$riesgo->nombre}}</td>
        <td>{{$riesgo->titulo}}</td>
        <td>{{$riesgo->descripcion}}</td>
        </tr>
       @endforeach
       </table>
       {{$riesgos->render()}}

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection