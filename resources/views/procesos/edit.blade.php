@extends ('layouts.tema')
@section ('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<style type="text/css">
    li{
        background-color: white;
        list-style-type:none;
    }
</style>

<div class="pagetitle">
    <h1>Edición de Proceso</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <h4 class="widgettitle nomargin">Información básica</h4>
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::model($proceso, ['method'=>'PATCH', 'route'=>['procesos.update', $proceso->id_proceso],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}

                    <!-- FORMULARIO PARA AUTOCOMPLETADO -->
                    {{ Form::open(['url'=>'#','id'=>'search-form','method' => 'get']) }}
                    
                    <p>
                        <label>Nombre del proceso</label>
                        <span class="field"><input type="text" name="nombre" class="input-xxlarge" value="{{$proceso->nombre}}" required="" placeholder="Debe ingresar el nombre del proceso para editar" /></span>
                    </p>

                    <p>
                        <label>ID del responsable</label>
                        <span class="field"><input type="text" id="id_responsable" name="id_responsable" class="input-xxlarge" value="{{$proceso->id_responsable}}" required="" placeholder="Debe ingresar el ID del Responsable" /></span>
                    </p>

                    <p>
                        <label>metas</label>
                        <span class="field"><textarea  id="metas" required="" placeholder="Debe ingresar las metas que serán soportadas por este proceso" name="metas" cols="80" rows="5" class="span5" style="resize: vertical" >{{$proceso->metas}}</textarea></span>
                    </p>

                    <p>
                        <label>Implementación</label>
                        <span class="field"><input type="text" name="implementacion" placeholder="Debe ingresar nivel de implmentación " class="input-xxlarge" value="{{$proceso->implementacion}}" required="" /></span>
                    </p>
                    <p>
                        <label>Tiempo medición (días)</label>
                        <span class="field"><input type="text" name="tiempo_medicion" placeholder="Debe ingresar tiempo de medición en días" class="input-xxlarge" required="" value="{{$proceso->tiempo_medicion}}" /></span>
                    </p>

                     <p>
                        <label>Área de proceso</label>
                        <span class="field">
                        <select name="cod_area" id="cod_area" class="uniformselect" required="">
                        <option selected="true" disabled="disabled">{{$proceso->cod_area}}</option>
                        @foreach($areas as $area)
                        <option value="{{$area -> cod_area}}">{{$area -> cod_area}} - {{$area -> nombre}}</option>
                        @endforeach
                        </select>
                        </span>
                    </p>
                    
                    <br />
                    <p align="right">
                        <button type="submit" class="btn btn-primary">Aceptar</button> &nbsp;  <a href="/procesos" class="btn btn-danger">Cancelar</a> 
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




</script>


@endsection