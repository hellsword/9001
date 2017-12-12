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
                    <span class="field"><input type="text" required="" placeholder="Ingresar años de experiencia del personal" name="aniosexperiencia" id="aniosexperiencia" class="input-xxlarge" value="" /></span>
                </p>
                <p>
                    <label>Números de trabajos</label>
                    <span class="field"><input type="text" required="" placeholder="Ingresar la cantidad de trabajos anteriores al que actual" name="Ntrabajos" id="Ntrabajos" class="input-xxlarge" value="" /></span>
                </p>
                <p>
                    <label>Grado</label>
                    <span class=field><input type="text" required="" placeholder="Ingresar Grado Académico ejemplo:'Técnico Nivel Superior'" name="grado" id="grado" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Cursos diplomados</label>
                    <span class="field"><input type="text" required="" placeholder="Debe ingresar los cursos diplomados correspondientes" name="Cursosodiplomados" id="Cursosodiplomados" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Recomendaciones</label>
                    <span class="field"><input type="text" required="" placeholder="Debe ingresar las recomendaciones" name="recomendaciones" id="recomendaciones" class="input-xxlarge" value="" /></span>
                </p>

                <p>
                    <label>Curriculum</label>
                    <span class="field"><input type="text" required="" placeholder="Debe ingresar el curriculum de la nueva contratación" name="curriculum" id="curriculum" class="input-xxlarge" value="" /></span>
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