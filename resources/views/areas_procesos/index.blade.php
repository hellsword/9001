@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Áreas de proceso</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Código del área</td>
        <td>Nombre del área</td>
       </tr>
      @foreach($areas as $area)
        <tr>
        <td>{{$area->cod_area}}</td>
        <td>{{$area->nombre}}</td>
        </tr>
       @endforeach
       </table>
       {{$areas->render()}}

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection