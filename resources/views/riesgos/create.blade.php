@extends ('layouts.tema')
@section ('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<style type="text/css">
    li{
        background-color: black;
        color: white;
        list-style-type:none;
        padding: 1px;
    }
</style>

<div class="pagetitle">
    <h1>Nuevo Riesgo</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::open(array('url'=>'riesgos', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}

                    <!-- FORMULARIO PARA AUTOCOMPLETADO -->
                    {{ Form::open(['url'=>'#','id'=>'search-form','method' => 'get']) }}
                    
                    <p>
                        <label>Proceso</label>
                        <span class="field"><input type="text" id="id_proceso" name="id_proceso" class="input-xxlarge" placeholder="Comience a escribir para buscar su riesgo" /></span>
                    </p>

                    <p>
                        <label>Título del riesgo</label>
                        <span class="field"><input type="text" name="titulo" class="input-xxlarge" placeholder="Defina un título que describa este riesgo" /></span>
                    </p>

                    <p>
                        <div id="lista_metas"></div>
                    </p>
                    
                    <br />
                    <p align="right">
                        <button type="submit" class="btn btn-primary">Aceptar</button> &nbsp;  <a href="/riesgos" class="btn btn-danger">Cancelar</a> 
                    </p>
                    {{ Form::close() }}
                {!!Form::close()!!}
            </div><!--row-fluid-->
        </div><!--widgetcontent-->
    </div><!--contentinner-->
</div><!--maincontent-->



<script type="text/javascript" src="{!! asset('//code.jquery.com/ui/1.11.4/jquery-ui.js') !!}"></script>


<script type="text/javascript">

    //AUTOCOMPLETADO PARA COD_AREA
        $(function()
        {
                 $( "#id_proceso" ).autocomplete({
                  source: "search/autocomplete_proceso",
                  minLength: 1,
                  select: function(event, ui) {
                          $('#id_proceso').val(ui.item.value);
                  }
                }); 
                $('#id_proceso').data( "ui-autocomplete" )._renderItem = function( ul, item )
                {
                    var $li = $("<li style='width:35%;margin-left:10px;margin-bottom:5px'>"),
                        $img = $("<img style='width:8%'>");
                $li.attr('data-value', item.value);
                
                $li.append($img).append(""+item.id);    
                return $li.appendTo(ul);
                
              };
        });



         var str = '<label>Descripción</label>'+
                        '<span class="field"><textarea id="descripcion" name="descripcion" cols="80" rows="5" class="span5" style="resize: vertical" placeholder="Esta es\nla descipcion\ndel riesgo de un proceso"></textarea></span>';

        document.getElementById('lista_metas').innerHTML = str;

</script>


@endsection