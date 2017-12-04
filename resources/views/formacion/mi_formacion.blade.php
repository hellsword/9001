@extends ('layouts.tema')
@section ('contenido')
    <div class="pagetitle">
        <h1>Formacion</h1>
    </div>
    <div class="maincontent">
        <div class="contentinner content-editprofile">
          <div class="widgetcontent bordered">
            <div class="row-fluid" >
        	<p>
        		<label>Años De Experiencia:</label>
        		
                <label>{{$formacion->aniosexperiencia}}</label>
        	</p>
        	<p>
        		<label>Numero de Trabajos:</label>
                <label>{{$formacion->Ntrabajos}}</label>
        	</p>
        	<p>
        		<label>Grado:</label>
                <label>{{$formacion->grado}}</label>
        	</p>
        	<p>
        		<label>Cursos o Diplomados:</label>
                <label>{{$formacion->Cursosodiplomados}}</label>
        	</p>
        	<p>
        		<label>Recomendaciones:</label>
                <label>{{$formacion->recomendaciones}}</label>
        	</p>
        	<p>
        		<label>Curriculum:</label>
                <label>{{$formacion->curriculum}}</label>
        	</p>
        	<p>
                <a href="{{URL::action('FormacionController@edit',$formacion->id_usuario)}}" ><button class="btn btn-info">Editar Informacion</button></a>
            </p>
        </div>
      </div>
    </div>
</div>



@endsection