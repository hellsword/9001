@extends ('layouts.tema')
@section ('contenido')
    <div class="pagetitle">
        <h1>Mi formacion</h1>
    </div>
    <div class="maincontent">
        	
        	<p>
        		<input type="text" name="" value="Años De Experiencia: " style="background-color:transparent; border: 0;"><input type="text" name="" value="{{$formacion->id_usuario}}" style="background-color:transparent; border: 0;">
        	</p>
        	
        	<p>
        		<label>Numero de Trabajos:</label>
        	</p>
        	<p>
        		<label>Grado:</label>
        	</p>
        	<p>
        		<label>Cursos o Diplomados:</label>
        	</p>
        	<p>
        		<label>Recomendaciones:</label>
        	</p>
        	<p>
        		<label>Curriculum:</label>
        	</p>
        	
       
    </div>



@endsection