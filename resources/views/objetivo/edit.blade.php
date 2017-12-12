@extends ('layouts.tema')
@section ('contenido')
<div class="pagetitle">
    <h1>Editar objetivo de id:{{ $objetivo->id_objetivo }}</h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Información general</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            	{!!Form::model($objetivo, ['method'=>'PATCH', 'route'=>['objetivo.update', $objetivo->id_objetivo],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
        		{{Form::token()}}
        		    <p>
                        <label>Acción a realizar:</label>
                        <span class="field"><input type="text" name="to_make" id="to_make" class="input-xxlarge" value="{{$objetivo->to_make}}" /></span>
                    </p>

                    <p>
                        <label>Recursos:</label>
                        <span class="field"><input type="text" name="resources" id="resources" class="input-xxlarge" value="{{$objetivo->resources}}"/></span>
                    </p>
                    <p>
                        <label>Tipo indicador:</label>
                        <span class="field"><input type="text" name="tipo_indicador" id="tipo_indicador" class="input-xxlarge" value="{{$objetivo->tipo_indicador}}" /></span>
                    </p>

                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                        <a href="/objetivos" class="btn btn-danger">Volver</a>  
                    </p>
        		{!!Form::close()!!}
            </div>      
</div>

@endsection