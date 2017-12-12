@extends ('layouts.tema_lista')
@section ('contenido')

<!-- TABLEXPORT -->
<script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/TableExport/4.0.11/js/tableexport.js') }}"></script>
<link rel="stylesheet" href="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/TableExport/4.0.11/css/tableexport.css') }}">

<div class="pagetitle">
    <h1>Listado de documentos y archivos</h1>
</div><!--pagetitle-->

  
<button type="button" class="btn btn-success" onclick="tableToExcel('tablita', 'W3C Example Table')" value="Export to Excel">Descargar lista como Excel</button>
  


<br><br>

<!-- TABLA CON CON DOCUMENTOS Y ARCHIVOS -->
<div id="documentos">
  <p>
  <h4 class="widgettitle nomargin shadowed">Lista de documentos creados</h4>
  <table class="table table-striped table-bordered table-condensed table-hover" id="tablita">
  <tr>
  </tr>
  <tr style="background-color: black; color: white;">
    <td>Título</td>
    <td>Autor</td>
    <td>Fecha creación</td>
    <td>Elemento</td>
  </tr>

  @if($tipo == 'documento')
    @foreach($documentos as $documento)
      <tr>
        <td>{{$documento->titulo}}</td>
        <td>{{$documento->nombre}} {{$documento->apellido}}</td>
        <td>{{$documento->fecha}}</td>
        <td>Documento</td>
      </tr>
    @endforeach

  @elseif($tipo == 'archivo')

    @foreach($archivos as $archivo)
      <tr>
        <td>{{$archivo->titulo}}</td>
        <td>{{$archivo->nombre}} {{$archivo->apellido}}</td>
        <td>{{$archivo->fecha}}</td>
        <td>Archivo</td>
      </tr>
    @endforeach

  @else

    @foreach($documentos as $documento)
      <tr>
        <td>{{$documento->titulo}}</td>
        <td>{{$documento->nombre}} {{$documento->apellido}}</td>
        <td>{{$documento->fecha}}</td>
        <td>Documento</td>
      </tr>
    @endforeach

    @foreach($archivos as $archivo)
      <tr>
        <td>{{$archivo->titulo}}</td>
        <td>{{$archivo->nombre}} {{$archivo->apellido}}</td>
        <td>{{$archivo->fecha}}</td>
        <td>Archivo</td>
      </tr>
    @endforeach

  @endif

  </table>
  </p>
</div>



<script type="text/javascript">
  
  var tableToExcel = (function() {
  var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
  return function(table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
    window.location.href = uri + base64(format(template, ctx))
  }
})()

</script>

@endsection