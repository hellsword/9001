@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Vista detallada del proceso </h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">


        <h4 class="widgettitle nomargin shadowed">Información general del proceso</h4>
        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                
                <p>
                  <label>ID:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{$proceso->id_proceso}}" readonly="" /></span>
                </p>

                <p>
                    <label>Nombre:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{$proceso->nombre}}" readonly="" /></span>
                </p>

                <p>
                    <label>Responsable:</label>
                    <span class="field"><input type="text" name="resources" id="resources" class="input-xxlarge" value="{{$proceso->nombre_responsable}} {{$proceso->apellido_responsable}}" readonly="" /></span>
                </p>
                <p>
                    <label>Implementación</label>
                    <span class="field"><input type="text" name="tipo_indicador" id="tipo_indicador" class="input-xxlarge" value="{{$proceso->implementacion}}" readonly="" /></span>
                </p>

                <p>
                    <label>Metas:</label>
                    <span class="field"><textarea id="metas" name="metas" cols="80" rows="5" class="span5" style="resize: vertical" readonly="">{{$proceso->metas}}</textarea></span>
                </p>
                <p>
                    <label>Área:</label>
                    <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" value="{{$proceso->area}}" readonly="" /></span>
                </p>
                <p>
                    <label>Medición:</label>
                    <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" value="{{$proceso->tiempo_medicion}} días" readonly="" /></span>
                </p>
            {!!Form::close()!!}
        </div>


        <h4 class="widgettitle nomargin shadowed">Información general de la documentación</h4>
        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}

                <p>
                    <label>Versión del proceso:</label>
                    <span class="field"><input type="text" name="resources" id="resources" class="input-xxlarge" value="{{$documentacion->version_proceso}}" readonly="" /></span>
                </p>
                <p>
                    <label>Fecha inicio:</label>
                    <span class="field"><input type="text" name="tipo_indicador" id="tipo_indicador" class="input-xxlarge" value="{{$documentacion->fecha_inicio}}" readonly="" /></span>
                </p>

                <p>
                    <label>Fecha finalización:</label>
                    <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" value="{{$documentacion->fecha_fin}}" readonly="" /></span>
                </p>
                <p>
                    <label>Número de cambios:</label>
                    <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" value="{{$documentacion->num_cambios}}" readonly="" /></span>
                </p>
                <p>
                    <label>Cantidad de participantes:</label>
                    <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" value="{{$documentacion->num_participantes}}" readonly="" /></span>
                </p>
            {!!Form::close()!!}
        </div>


        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
        <div class="stdform stdform2">
            <p>
          <h4 class="widgettitle nomargin shadowed">Lista de objetivos</h4>
           <table class="table table-striped table-bordered table-condensed table-hover"">
                <tr>
               </tr>
                 <tr style="background-color: black; color: white;">            
                  <td>Acción a realizar</td>
                  <td>Recursos</td>
                  <td>Tipo de indicador</td>
                  <td>ID del proceso</td>
                  </tr>

                  @foreach($objetivo as $item)
                 <tr>
                 <td>{{$item->to_make}}</td>
                 <td>{{$item->resources}}</td>
                 <td>{{$item->tipo_indicador}}</td>
                 <td>{{$item->id_proceso}}</td>
                 </tr>
                 @include('objetivo.modal')
                 @endforeach
          </table>
          {{$objetivo->render()}}
           </p>
        </div>
    </div>

    <p align="right">
        <a href="/procesos" class="btn btn-danger">Volver</a> 
    </p>



   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection