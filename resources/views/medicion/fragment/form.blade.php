<div class="form-group">
	{!! Form::label('id_proceso','ID Proceso ') !!}
	<input type="text" class="form-control" name="id_proceso" id="id_proceso">

</div>
<div class="form-group">
	{!! Form::label('fecha_medicion','fecha medicion') !!}
	{!! Form::text('fecha_medicion', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::label('detalles','detalles') !!}
	{!! Form::textarea('detalles', null, ['class' =>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('anotacion_mejora','anotacion mejora') !!}
	{!! Form::textarea('anotacion_mejora', null, ['class' =>'form-control']) !!}

</div>

<div class="form-group">
	{!! Form::submit('ENVIAR', ['class' => 'btn btn-primary']) !!}

</div>



<script type="text/javascript" src="{!! asset('//code.jquery.com/ui/1.11.4/jquery-ui.js') !!}"></script>


<script type="text/javascript">
	

	//AUTOCOMPLETADO PARA ID_RESPONSABLE    
        $(function()
        {
                 $( "#id_proceso" ).autocomplete({
                  source: "search/autocomplete_medicion",
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

</script>
<!-- #comentario -->