<div class="form-group">
	{!! Form::label('id_proceso','ID Proceso ') !!}
  <input type="hidden" name="" id="temp" value="">
  {!! Form::hidden('id_proceso', null, ['class' =>'form-control', 'id' => 'id_proceso']) !!}
  {!! Form::text('proceso', null, ['class' =>'form-control', 'id' => 'proceso', 'required' => 'required', 'placeholder' => 'Debe ingresar el ID del proceso presionando tecla e para visualizar proceso']) !!}

</div>
<div class="form-group">
	{!! Form::label('fecha_medicion','fecha medicion') !!}
	{!! Form::text('fecha_medicion', date("Y-m-d H:i:s"), ['class' =>'form-control', 'required' , 'placeholder' => 'Debe ingresar fecha de medición en formato:día/mes/año']) !!}

</div>

<div class="form-group">
	{!! Form::label('detalles','detalles') !!}</di
<div class="form-group" required="">
	{!! Form::label('anotacion_mejora','anotacion mejora') !!}
	{!! Form::textarea('anotacion_mejora', null, ['class' =>'form-control','required' => 'required', 'placeholder' => 'Debe ingresar detalle para la medición']) !!}

</div>

<div class="form-group">
	{!! Form::submit('ENVIAR', ['class' => 'btn btn-primary']) !!}

</div>



<script type="text/javascript" src="{!! asset('//code.jquery.com/ui/1.11.4/jquery-ui.js') !!}"></script>


<script type="text/javascript">
	
	//AUTOCOMPLETADO PARA ID_PROCESO
        $(function()
        {
                 $( "#proceso" ).autocomplete({
                  source: "search/autocomplete_proceso",
                  minLength: 1,
                  select: function(event, ui) {
                          $('#temp').val(ui.item.value);
                          define_proceso();
                  }
                }); 
                $('#proceso').data( "ui-autocomplete" )._renderItem = function( ul, item )
                {
                    var $li = $("<li style='width:35%;margin-left:10px;margin-bottom:5px'>"),
                        $img = $("<img style='width:8%'>");
                $li.attr('data-value', item.value);
                
                $li.append($img).append(""+item.id);    
                return $li.appendTo(ul);
                
              };
        });

        function define_proceso(){
            var vector = document.getElementById('temp').value.split('|');
            document.getElementById('id_proceso').value = vector[0];
        }


</script>