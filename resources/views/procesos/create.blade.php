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
    <h1>Nuevo Proceso</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <h4 class="widgettitle nomargin">Información básica</h4>
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::open(array('url'=>'procesos', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}

                    <!-- FORMULARIO PARA AUTOCOMPLETADO -->
                    {{ Form::open(['url'=>'#','id'=>'search-form','method' => 'get']) }}
                    
                    <p>
                        <label>Nombre del proceso</label>
                        <span class="field"><input type="text" name="nombre" required="" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>ID del responsable</label>
                        <span class="field"><input type="text" id="id_responsable" required="" name="id_responsable" class="input-xxlarge"  /></span>
                    </p>

                    <p>
                        <div id="lista_metas"></div>
                    </p>

                    <p>
                        <label>Implementación</label>
                        <span class="field"><input type="text" name="implementacion" required="" class="input-xxlarge" /></span>
                    </p>
                    <p>
                        <label>Tiempo medición (días)</label>
                        <span class="field"><input type="text" name="tiempo_medicion" required="" class="input-xxlarge" /></span>
                    </p>

                     <p>
                        <label>Área de proceso</label>
                        <span class="field">
                        <select name="cod_area" id="cod_area" class="uniformselect" required="">
                        @foreach($areas as $area)
                        <option value="{{$area -> cod_area}}">{{$area -> cod_area}} - {{$area -> nombre}}</option>
                        @endforeach
                        </select>
                        </span>
                    </p>
                    
                    <br />
                    <p align="right">
                        <button type="submit" class="btn btn-primary">Aceptar</button> &nbsp;  <a href="/home" class="btn btn-danger">Cancelar</a> 
                    </p>
                    {{ Form::close() }}
                {!!Form::close()!!}
            </div><!--row-fluid-->
        </div><!--widgetcontent-->
    </div><!--contentinner-->
</div><!--maincontent-->
<ul class="lista"></ul>


<script type="text/javascript" src="{!! asset('//code.jquery.com/ui/1.11.4/jquery-ui.js') !!}"></script>



<script>

        //AUTOCOMPLETADO PARA ID_RESPONSABLE    
        $(function()
        {
                 $( "#id_responsable" ).autocomplete({
                  source: "search/autocomplete_responsable",
                  minLength: 1,
                  select: function(event, ui) {
                          $('#id_responsable').val(ui.item.value);
                  }
                }); 
                $('#id_responsable').data( "ui-autocomplete" )._renderItem = function( ul, item )
                {
                    var $li = $("<li style='width:35%;margin-left:10px;margin-bottom:5px'>"),
                        $img = $("<img style='width:8%'>");
                $li.attr('data-value', item.value);
                
                $li.append($img).append(""+item.id);    
                return $li.appendTo(ul);
                
              };
        });

        //AUTOCOMPLETADO PARA COD_AREA
        /*
        $(function()
        {
                 $( "#area_proceso" ).autocomplete({
                  source: "search/autocomplete_areaProceso",
                  minLength: 1,
                  select: function(event, ui) {
                          $('#area_proceso').val(ui.item.value);
                  }
                }); 
                $('#area_proceso').data( "ui-autocomplete" )._renderItem = function( ul, item )
                {
                    var $li = $("<li style='width:35%;margin-left:10px;margin-bottom:5px'>"),
                        $img = $("<img style='width:8%'>");
                $li.attr('data-value', item.value);
                
                $li.append($img).append(""+item.id);    
                return $li.appendTo(ul);
                
              };
        });
*/



        var str = '<label>metas</label>'+
                        '<span class="field"><textarea id="metas" name="metas" cols="80" rows="5" class="span5" style="resize: vertical" required="" placeholder="*meta1\n*meta2\n*meta3\n*......"></textarea></span>';

        document.getElementById('lista_metas').innerHTML = str;



</script>


@endsection