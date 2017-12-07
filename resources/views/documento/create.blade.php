@extends('layouts.tema')
@section('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<!-- EDITOR DE TEXTO -->
<script src="{{ asset('/vendors/ckeditor/ckeditor.js') }}"></script>

<style type="text/css">
    li{
        background-color: white;
        list-style-type:none;
    }
</style>

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Nuevo documento</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            	{!!Form::open(array('url'=>'documento', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}

                    <input type="hidden" name="id_doc" id="id_doc" class="input-xxlarge"  value="{{$documentacion_id}}" />
                    <p>
                        <label>Título (nombre del documento):</label>
                        <span class="field"><input type="text" name="titulo" id="titulo" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>Autor:</label>
                        <span class="field"><input type="text" name="autor_nombre" id="autor_nombre" required="" class="input-xxlarge" value="{{ Auth::user()->nombre}} {{ Auth::user()->apellido}}" readonly="" /></span>
                        <span class="hidden"><input type="text" name="autor" id="autor" class="input-xxlarge"  required="" value="{{ Auth::user()->id}}" /></span>
                    </p>

                    <p>
                        <label>Fecha:</label>
                        <span class="field"><input type="text" name="fecha" id="fecha" class="input-xxlarge" required="" value="<?php echo date("d/m/Y"); echo " " . date("h:i").date("a");?>" /></span>
                    </p>

                    <p>
                                <label>Redacte su documento:</label>
                                <span class="field">
                                <div class="panel-body">
                                    
                                        <textarea class="ckeditor" rows="10" cols="80" id="cuerpo" required="" name="cuerpo" placeholder="Este es el textarea que es modificado por la clase ckeditor">
                                            
                                        </textarea>
                                   
                                </div>
                                </span> 
                    </p>

                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                        <a href="/documentacion/{{$documentacion_id}}" class="btn btn-danger" role="button">Volver</a>
                    </p>
                    
                {!!Form::close()!!}
            </div>
        </div>
</div>


<script type="text/javascript" src="{!! asset('//code.jquery.com/ui/1.11.4/jquery-ui.js') !!}"></script>



<script>

        //AUTOCOMPLETADO PARA ID_RESPONSABLE    
        $(function()
        {
                 $( "#id_proceso" ).autocomplete({
                  source: "search/autocomplete_objetivo",
                  minLength: 1,
                  select: function(event, ui) {
                          $('#id_proceso').val(ui.item.value);
                  }
                }); 
                $('#id_proceso').data( "ui-autocomplete" )._renderItem = function( ul, item )
                {
                    var $li = $("<li style='width:800px;margin-left:10px;margin-bottom:5px'>"),
                        $img = $("<img style='width:8%'>");
                $li.attr('data-value', item.value);
                
                $li.append($img).append(""+item.id);    
                return $li.appendTo(ul);
                
              };
        });

</script>

@endsection