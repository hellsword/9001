@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Visualizador de documento </h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed"></h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
                <div class="stdform stdform2">

                    <p>
                        <label>Título:</label>
                        <span class="field"><input type="text" name="titulo" id="titulo" class="input-xxlarge" value="{{$documento->titulo}}" readonly="" /></span>
                    </p>

                    <p>
                        <label>Autor:</label>
                        <span class="field"><input type="text" name="titulo" id="titulo" class="input-xxlarge" value="{{$documento->nombre}} {{$documento->apellido}}" readonly="" /></span>
                    </p>

                    <p>
                        <label>Fecha:</label>
                        <span class="field"><input type="text" name="fecha" id="fecha" class="input-xxlarge" value="{{$documento->fecha}}" readonly="" /></span>
                    </p>

                    <p>
                        <label>Cuerpo del documento:</label>
                        <span class="field"><textarea id="cuerpo" name="cuerpo" cols="100" rows="15" class="span5" style="resize: vertical" readonly="">{{$documento->cuerpo}}</textarea></span> 
                    </p>

                    <p class="stdformbutton">

                        {{Form::Open(array('action'=>array('DocumentoController@downloadPDF'), 'method'=>'GET', 'id'=>'doc_form' ))}}
                        <input type="hidden" name="num_documento" value="{{$documento->num_documento}}">
                        <a href="/documentacion/{{$documento->id_doc}}" class="btn btn-danger" role="button">Volver</a>
                        <button type="submit" class="btn btn-primary">Descargar PDF</button>
                      {{ Form::close() }}
                    </p>
                    
                </div>
            </div>
        </div>
</div>


<script type="text/javascript">

  function downloadPDF(){
    document.getElementById('doc_form').submit();
  }


  function 

</script>

@endsection