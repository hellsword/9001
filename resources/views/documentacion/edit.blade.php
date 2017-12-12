@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Documentación N° {{$documentacion->id_doc}} </h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <h4 class="widgettitle nomargin shadowed">Información general de la documentación</h4>
        <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            {!!Form::model($documentacion, ['method'=>'PATCH', 'route'=>['documentacion.update', $documentacion->id_doc],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
             
                <p>
                    <label>Nombre del proceso:</label>
                    <span class="field"><input type="text" name="to_make" id="to_make" required="" placeholder="Debe Ingresar el nombre del Proceso" class="input-xxlarge" value="{{$nombre_proceso->nombre}}" readonly="" /></span>
                </p>

                <p>
                    <label>Versión del proceso:</label>
                    <span class="field"><input type="text" name="version_proceso" placeholder="Debe Ingresar la versión del Proceso" required="" id="version_proceso" class="input-xxlarge" value="{{$documentacion->version_proceso}}" /></span>
                </p>
                <p>
                    <label>Fecha inicio:</label>

                    <span class="field"><input type="date" name="fecha_inicio" id="fecha_inicio" class="input-xxlarge" value="{{$documentacion->fecha_inicio}}"  /></span>

                    <span class="field"><input type="text" name="fecha_inicio" placeholder="Debe Ingresar la fecha de Inicio en el formato:'día/mes/año' "  required=""  id="fecha_inicio" class="input-xxlarge" value="{{$documentacion->fecha_inicio}}"  /></span>

                </p>

                <p>
                    <label>Fecha finalización:</label>

                    <span class="field"><input type="date" name="fecha_fin" id="fecha_fin" class="input-xxlarge" value="{{$documentacion->fecha_fin}}"  /></span>

                    <span class="field"><input type="text" required="" placeholder="Debe Ingresar la fecha de finalización en el formato:'día/mes/año' "  name="fecha_fin" id="fecha_fin" class="input-xxlarge" value="{{$documentacion->fecha_fin}}"  /></span>

                </p>
                <p>
                    <label>Número de cambios:</label>
                    <span class="field"><input type="text"  placeholder=" Debe ingresar la cantidad de cambios, valor numérico" required="" name="num_cambios" id="num_cambios" class="input-xxlarge" value="{{$documentacion->num_cambios}}"  /></span>
                </p>
                <p>
                    <label>Cantidad de participantes:</label>
                    <span class="field"><input type="text" required=""  placeholder="Debe Ingresar la cantidad de participantes, valor numérico " name="num_participantes" id="num_participantes" class="input-xxlarge" value="{{$documentacion->num_participantes}}"  /></span>
                </p>

                <p class="stdformbutton">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <a href="/documentacion" class="btn btn-danger" role="button">Volver</a>
                </p>
            {!!Form::close()!!}
        </div>
    </div>
</div>


@endsection