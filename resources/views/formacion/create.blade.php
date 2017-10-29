@extends ('layouts.tema_perfil')
@section ('contenido')

<div class="pagetitle">
    <h1>Formación</h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
        		{!!Form::open(array('url'=>'formacion', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                <p>
                    <label>Años de experiencia</label>
                    <span class="field"><input type="text" name="aniosexperiencia" id="aniosexperiencia" class="input-xxlarge" value="" /></span>
                </p>
                <p>
                    <label>Números de trabajos</label>
                    <span class="field"><input type="text" name="Ntrabajos" id="Ntrabajos" class="input-xxlarge" value="" /></span>
                </p>
                <p>
                    <label>Grado</label>
                    <span class=field><input type="text" name="grado" id="grado" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Cursos diplomados</label>
                    <span class="field"><input type="text" name="Cursosodiplomados" id="Cursosodiplomados" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Recomendaciones</label>
                    <span class="field"><input type="text" name="recomendaciones" id="recomendaciones" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Curriculum</label>
                    <span class="field"><input type="text" name="curriculum" id="curriculum" class="input-xxlarge" value="" /></span>
                </p>

                <p class="stdformbutton">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="reset" class="btn">Cancelar</button>
                </p>
        		{!!Form::close()!!}
            </div>
        </div>
</div> 

@endsection