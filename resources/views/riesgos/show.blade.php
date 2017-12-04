@extends ('layouts.tema')
@section ('contenido')

<!-- PARA QUE FUNCIONE EL AUTOCOMPLETADO -->
<script type="text/javascript" src="{!! asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js') !!}"></script>

<style type="text/css">
    li{
        background-color: black;
        color: white;
        list-style-type:none;
        padding: 1px;
    }
</style>

<div class="pagetitle">
    <h1>Visualizador de Riesgo</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::open(array('url'=>'', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                    
                    <p>
                        <label>Proceso</label>
                        <span class="field"><input type="text" id="id_proceso" name="id_proceso" class="input-xxlarge" value="{{$riesgos->nombre}}" readonly="" /></span>
                    </p>

                    <p>
                        <label>Título del riesgo</label>
                        <span class="field"><input type="text" name="titulo" class="input-xxlarge" value="{{$riesgos->titulo}}" readonly="" /></span>
                    </p>

                    <p>
                        <label>Descripción</label>
                        <span class="field"><textarea id="descripcion" name="descripcion" cols="80" rows="10" class="span9" style="resize: vertical" readonly="">{{$riesgos->descripcion}}</textarea></span>
                    </p>
                    
                    <br />
                    <p align="right">
                        <a href="/riesgos" class="btn btn-danger">Volver</a> 
                    </p>
                
                {!!Form::close()!!}
            </div><!--row-fluid-->
        </div><!--widgetcontent-->
    </div><!--contentinner-->
</div><!--maincontent-->



@endsection