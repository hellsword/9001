@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Riesgos detectados</h1>
</div><!--pagetitle-->

<a href="/nuevo_riesgo"><button class="btn btn-success">Ingresar riesgo</button></a>

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Nombre proceso</td>
        <td>Titulo riesgo</td>
        <td colspan="3">&nbsp;</td>
       </tr>
      @foreach($riesgos as $riesgo)
        <tr>
        <td>{{$riesgo->nombre}}</td>
        <td>{{$riesgo->titulo}}</td>

        <td>  <a href="{{ route('riesgos.show', $riesgo->id_riesgo) }}"><i class="icon-eye-open"></i></a> </td> 
        @if(Auth::user()->tipo=='admin' OR Auth::user()->id == $riesgo->id_usuario)
          <td> <a href="{{ route('riesgos.edit', $riesgo->id_riesgo) }}"><i class="icon-edit"></i></a>  </td>

          <td>  {{Form::Open(array('action'=>array('RiesgoController@destroy', $riesgo->id_riesgo), 'method'=>'delete', 'id'=>$riesgo->id_riesgo.'-destroy' ))}}
              <input type="hidden" name="_method" value="DELETE">
              <a onclick="eliminar({{$riesgo->id_riesgo}})" ><i class="icon-remove"></i></a>
              </form> 
          </td>
        @endif
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


  function eliminar(id_riesgo){


    swal({
      title: '¿Seguro que desea eliminar este riesgo?',
      text: "Una vez eliminado, no se podrá recuperar",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, elimínalo!'
    }).then((result) => {
      if (result.value) {
        document.getElementById(id_riesgo+'-destroy').submit();
      }
    })

  }

</script>

@endsection