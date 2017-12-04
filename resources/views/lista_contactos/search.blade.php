{!! Form::open(array('url'=>'lista_contactos','method'=>'GET','class'=>'stdform stdform2', 'autocomplete'=>'off','role'=>'search')) !!}
<div class="form-group">
	<div class="input-group">
	  <p>	
		<label><input type="text" class="form-control" name="searchText" placeholder="Buscar por rut..." value="{{$searchText}}"></label>
		<span class="field"><button type="submit" class="btn btn-primary">Buscar</button></span>
      </p>
	</div>
</div>


{{Form::close()}}