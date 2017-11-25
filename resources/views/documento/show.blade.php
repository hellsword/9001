@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Visualizador de documento </h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed"></h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
                {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}

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
                        <a href="/documentacion/{{$documento->id_doc}}" class="btn btn-danger" role="button">Volver</a>
                    </p>
                    
                {!!Form::close()!!}
            </div>
        </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection