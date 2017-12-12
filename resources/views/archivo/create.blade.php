@extends('layouts.tema_form')
@section('contenido')

<style type="text/css">
    li{
        background-color: white;
        list-style-type:none;
    }
</style>

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Subir archivo</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
            	{!!Form::open(array('url'=>'archivo', 'method'=>'POST', 'class'=>'stdform stdform2', 'files' => true, 'enctype' => 'multipart/form-data', 'autocomplete'=>'off'))!!}
                
                    <input type="hidden" name="id_doc" id="id_doc" class="input-xxlarge"  value="{{$documentacion_id}}" />
                    <p>
                        <label>Título:</label>
                        <span class="field"><input type="text" name="titulo" id="titulo" class="input-xxlarge" placeholder="Ingrese título" required="" /></span>
                    </p>

                    <p>
                        <label>Autor:</label>
                        <span class="field"><input type="text" name="autor_nombre"  required="" id="autor_nombre" class="input-xxlarge" value="{{ Auth::user()->nombre}} {{ Auth::user()->apellido}}" readonly="" /></span>
                        <span class="hidden"><input type="text" name="autor" id="autor" class="input-xxlarge" required="" value="{{ Auth::user()->id}}" /></span>
                    </p>

                    <p>
                        <label>Fecha:</label>
                        <span class="field"><input type="text" name="fecha" id="fecha" class="input-xxlarge" placeholder="Debe ingresar una fecha en formato: 'día/mes/año'" required="" value="<?php echo date("d/m/Y"); echo " " . date("h:i").date("a");?>" /></span>
                    </p>

                    <p>
                        <label>Archivo:</label>  <div style="padding-left: 10px;"></div>
                        <span class="field" >
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="input-append">
                            <div class="uneditable-input span3">
                                <i class="icon-file fileupload-exists"></i>
                                <span class="fileupload-preview"></span>
                            </div>
                            <span class="btn btn-file"><span class="fileupload-new">Select file</span>
                            <span class="fileupload-exists">Change</span>
                            <input type="file" required="" name="archivo" required="" id="archivo" /></span>
                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
                            </div>
                            </div>
                        </span>
                    </p>

                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                        <a href="/documentacion/{{$documentacion_id}}" class="btn btn-danger" role="button">Volver</a>
                    </p>
                   
                {!!Form::close()!!}
            </div>
        </div>
</div>


@endsection