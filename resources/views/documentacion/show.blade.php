@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Documentación N° {{$documentacion->id_doc}} </h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <h4 class="widgettitle nomargin shadowed">Información general de la documentación</h4>
        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                <p>
                    <label>Nombre del proceso:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{$documentacion->proceso_nombre}}" readonly="" /></span>
                </p>

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
                {!!Form::open(array('url'=>'documento/create', 'method'=>'GET', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                    <input type="hidden" name="documentacion_id" value="{{$documentacion->id_doc}}" >
                    <button type="submit" class="btn btn-primary">Crear nuevo documento</button>
                {!!Form::close()!!}
            </p>

            <!-- TABLA CON LOS DOCUMENTOS CREADOS AQUI EN LA PAGINA -->
            <p>
    	    <h4 class="widgettitle nomargin shadowed">Lista de documentos creados</h4>
            <table class="table table-striped table-bordered table-condensed table-hover">
            <tr>
            </tr>
            <tr style="background-color: black; color: white;">
            <td>Título</td>
            <td>Autor</td>
            <td>Fecha creación</td>
            <td>Acciones</td>
           </tr>

           @foreach($documentos as $documento)
            <tr>
            <td>{{$documento->titulo}}</td>
            <td>{{$documento->nombre}} {{$documento->apellido}}</td>
            <td>{{$documento->fecha}}</td>
            <td> <a href="{{URL::action('DocumentoController@show',$documento->num_documento)}}"  class="btn btn-small"><i class="icon-eye-open"></i></a> <a href=""  class="btn btn-small"><i class="icon-edit"></i></a>  <a href="" data-target="#modal_documento-delete-{{$documento->num_documento}}{{$documento->id_doc}}" data-toggle="modal" onclick="no_css()" class="btn btn-small"><i class="icon-remove-sign"></i></a></td>
            </tr>
            @include('documentacion.modal_documento')
            @endforeach
           </table>
           {{$documentos->render()}}
           </p>
        </div>
    </div>



    <div class="widgetcontent bordered shadowed nopadding" id="formulario">
        <div class="stdform stdform2">
           <p>
                {!!Form::open(array('url'=>'archivo/create', 'method'=>'GET', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                    <input type="hidden" name="documentacion_id" value="{{$documentacion->id_doc}}" >
                    <button type="submit" class="btn btn-success">Subir documento</button>
                {!!Form::close()!!}
            </p>
           
           <!-- TABLA CON LOS DOCUMENTOS SUBIDOS -->
           <p>
           <h4 class="widgettitle nomargin shadowed">Lista de documentos subidos</h4>
            <table class="table table-striped table-bordered table-condensed table-hover">
            <tr>
            </tr>
            <tr style="background-color: black; color: white;">
            <td>Título</td>
            <td>Autor</td>
            <td>Fecha creación</td>
            <td>Acciones</td>
           </tr>

            @foreach($archivos as $archivo)
            <tr>
            <td>{{$archivo->titulo}}</td>
            <td>{{$archivo->nombre}} {{$archivo->apellido}}</td>
            <td>{{$archivo->fecha}}</td>
            <td> <a href="/getfile/{{$archivo->num_archivo}}" class="btn btn-small"><i class="icon-download icon-spin"></i></a>   <a href=""  class="btn btn-small"><i class="icon-remove-sign"></i></a></td>
            </tr>
            @endforeach
           </table>
           {{$archivos->render()}}
           </p>
        </div>
    </div>

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection