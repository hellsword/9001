@extends('layouts.tema')
@section('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<style type="text/css">
    li{
        background-color: white;
        list-style-type:none;
    }
</style>

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Crear objetivo</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            	{!!Form::open(array('url'=>'objetivo', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                
                    <!-- FORMULARIO PARA AUTOCOMPLETADO -->
                    {{ Form::open(['url'=>'#','id'=>'search-form','method' => 'get']) }}
                    <p>
                        <label>Acción a realizar:</label>
                        <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>Recursos:</label>
                        <span class="field"><input type="text" name="resources" id="resources" class="input-xxlarge" /></span>
                    </p>
                    <p>
                        <label>Tipo de indicador:</label>
                        <span class="field"><input type="text" name="tipo_indicador" id="tipo_indicador" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>Proceso del que deriva:</label>
                        <span class="field"><input type="text" name="id_proceso" id="id_proceso" class="input-xxlarge" /></span>
                    </p>

                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                        <button type="reset" class="btn">Reiniciar</button>
                    </p>
                    {!!Form::close()!!}
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