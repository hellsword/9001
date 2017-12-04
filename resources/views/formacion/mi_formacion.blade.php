@extends ('layouts.tema')
@section ('contenido')
    <div class="pagetitle">
        <h1>Mi formacion</h1>
    </div>
    <div class="maincontent">
        <div class="contentinner">
        	
        	<p>
        		<label>Años De Experiencia:</label>
        		<label>{{$formacion->id_usuario}}</label>
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
    </div>



@endsection