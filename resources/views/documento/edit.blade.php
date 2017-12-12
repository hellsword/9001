@extends ('layouts.tema')
@section ('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<!-- EDITOR DE TEXTO -->
<script src="{{ asset('/vendors/ckeditor/ckeditor.js') }}"></script>

<div class="pagetitle">
    <h1>Edición de documento </h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed"></h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
                {!!Form::model($documento, ['method'=>'PATCH', 'route'=>['documento.update', $documento->id_doc],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
                    <input type="hidden" name="num_documento" value="{{$documento->num_documento}}" >
            <!--
                    <p>
                        <label>Título:</label>
                        <span class="field"><input type="text" required="" placeholder="Debe ingresar Título para editar Documento" name="titulo" id="titulo" class="input-xxlarge" value="{{$documento->titulo}}"  /></span>
                    </p>
-->
                    <p>
                        <label>Autor:</label>
                        <span class="field"><input type="text" name="autor" id="autor" class="input-xxlarge" value="{{$documento->nombre}} {{$documento->apellido}}" readonly="" /></span>
                    </p>
<!--
                    <p>
                        <label>Fecha:</label>
                        <span class="field"><input type="text" required="" placeholder="Debe ingresra fecha en formato: 'día/mes/año'" name="fecha" id="fecha" class="input-xxlarge" value="{{$documento->fecha}}"  /></span>
                    </p>
-->
                    <p>

                        <label>Redacte su documento:</label>
                        <span class="field">
                        <div class="panel-body">
                            
                                <textarea class="ckeditor" rows="10" cols="80" id="cuerpo" name="cuerpo" placeholder="Este es el textarea que es modificado por la clase ckeditor">
                                    {{$documento->cuerpo}}
                                </textarea>
                           
                        </div>
                        </span> 

                        <label>Cuerpo del documento:</label>
                        <span class="field"><textarea id="cuerpo" name="cuerpo" required="" placeholder="Debe editar el cuerpo del Documento" cols="100" rows="15" class="span5" style="resize: vertical" >{{$documento->cuerpo}}</textarea></span> 

                    </p>

                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Guardar</button>
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