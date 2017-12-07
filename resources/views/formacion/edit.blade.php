@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Editar datos de formación de usuario con id: {{ Auth::user()->id}}</h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
        		{!!Form::model($formacion, ['method'=>'PATCH', 'route'=>['formacion.update', $formacion->id_usuario],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
                <p>
                    <label>Años de experiencia</label>
                    <span class="field"><input  required=""  type="text" name="aniosexperiencia" id="aniosexperiencia" class="input-xxlarge" value="{{$formacion->aniosexperiencia}}" /></span>
                </p>
                <p>
                    <label>Números de trabajos</label>
                    <span class="field"><input required="" type="text" name="Ntrabajos" id="Ntrabajos" class="input-xxlarge" value="{{$formacion->Ntrabajos}}" /></span>
                </p>
                <p>
                    <label>Grado</label>
                    <span class=field><input required="" type="text" name="grado" id="grado" class="input-xxlarge" value="{{$formacion->grado}}" /></span>
                </p>

                <p>
                    <label>Cursos diplomados</label>
                    <span class="field"><input required="" type="text" name="Cursosodiplomados" id="Cursosodiplomados" class="input-xxlarge" value="{{$formacion->Cursosodiplomados}}" /></span>
                </p>

                <p>
                    <label>Recomendaciones</label>
                    <span class="field"><input required="" type="text" name="recomendaciones" id="recomendaciones" class="input-xxlarge" value="{{$formacion->recomendaciones}}" /></span>
                </p>

                <p>
                    <label>Curriculum</label>
                    <span class="field"><input required="" type="text" name="curriculum" id="curriculum" class="input-xxlarge" value="{{$formacion->curriculum}}" /></span>
                </p>

                <p class="stdformbutton">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <a href="/usuarios" class="btn btn-danger">Volver</a>  
                </p>
        		{!!Form::close()!!}
            </div>
        </div>
</div> 

@endsection