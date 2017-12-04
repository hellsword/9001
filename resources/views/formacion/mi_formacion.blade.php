@extends ('layouts.tema')
@section ('contenido')
    <div class="pagetitle">
        <h1>Formacion</h1>
    </div>
    <div class="maincontent">
      <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
            <tr>
                <td>
                    Campos
                </td>
                <td>
                    Descripcion
                </td>
            </tr>
            <tr>
        	    <td>
        		<label>Años De Experiencia:</label>
        	    </td>
                <td>	
                <label>{{$formacion->aniosexperiencia}}</label>
                </td> 
            </tr>
        	<tr>
                <td>
        		<label>Numero de Trabajos:</label>
                </td>
                <td>
                <label>{{$formacion->Ntrabajos}}</label>
                </td>
        	</tr>
        	<tr>
                <td>
        		<label>Grado:</label>
                </td>
                <td>
                <label>{{$formacion->grado}}</label>
                </td>
        	</tr>
        	<tr>
                <td>
        		<label>Cursos o Diplomados:</label>
                </td>
                <td>
                <label>{{$formacion->Cursosodiplomados}}</label>
                </td>
        	</tr>
        	<tr>
                <td>
        		<label>Recomendaciones:</label>
                </td>
                <td>
                <label>{{$formacion->recomendaciones}}</label>
                </td>
        	</tr>
        	<tr>
                <td>
        		<label>Curriculum:</label>
                </td>
                <td>
                <label>{{$formacion->curriculum}}</label>
                </td>
        	</tr>
        </table>
          <center><a href="{{URL::action('FormacionController@edit',$formacion->id_usuario)}}" ><button class="btn btn-info">Editar Informacion</button></a></center>
       </div>
    </div>


@endsection