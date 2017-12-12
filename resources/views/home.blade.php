@extends('layouts.tema')
@section('contenido')

<style type="text/css">
    li{
        background-color: white;
        list-style-type:none;
    }
</style>

  <div class="pagetitle">
        <h1>Página principal</h1> <span>Aquí encontrará todo lo que necesite...</span>
    </div><!--pagetitle-->

    <div class="maincontent">
            <div class="contentinner">
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Bienvenido!</strong> This alert needs your attention, but it's not super important.
                </div><!--alert-->

      
                <div class="row-fluid">
                    <div class="span8">
                        <img src="imagenes/imagen.jpg" alt="" />

                        @if(Auth::user()->tipo=='admin')
                        <div style="border-style: dotted; border-width: thick;">
                            {!! Form::open(array('url'=>'/cambiar_imagen', 'method'=>'POST','autocomplete'=>'off', 'files' => true, 'name'=>'formu', 'autocomplete'=>'off')) !!}
                            <input type="file" name="imagen" id="imagen" class="input-xxlarge" accept="image/*" required=""/>
                            <button type="submit" class="btn btn-success">Cambiar imagen</button>
                            {!!Form::close()!!}
                        </div>
                        @endif

                        <br>

                        <h4 class="widgettitle">Módulos</h4>
                        <ul class="widgeticons row-fluid">
                            <li class="one_fifth"><a href="/objetivo"><img src="katniss/img/gemicon/location.png" alt="" /><span>Objetivos</span></a></li>
                            <li class="one_fifth last"><a href="/lista_contactos"><img src="katniss/img/gemicon/mail.png" alt="" /><span>Contactos</span></a></li>
                            <li class="one_fifth"><a href="/lista"><img src="katniss/img/gemicon/users.png" alt="" /><span>RRHH</span></a></li>
                            <li class="one_fifth"><a href="/procesos"><img src="katniss/img/gemicon/settings.png" alt="" /><span>Procesos</span></a></li>
                            <li class="one_fifth"><a href="/documentacion"><img src="katniss/img/gemicon/archive.png" alt="" /><span>Documentación</span></a></li>
                            <li class="one_fifth"><a href="/areas_procesos"><img src="katniss/img/gemicon/areas.png" alt="" /><span>Áreas de proceso</span></a></li>
                            <li class="one_fifth"><a href="/riesgos"><img src="katniss/img/gemicon/riesgos.png" alt="" /><span>Gestión de riesgos</span></a></li>
                            <li class="one_fifth"><a href="{{ route('medicion.index') }}"><img src="katniss/img/gemicon/edit.png" alt="" /><span>Medición de procesos</span></a></li>
                        

                           <!-- <li class="one_fifth last"><a href=""><img src="katniss/img/gemicon/notify.png" alt="" /><span>Notifications</span></a></li>  -->
                        </ul>
                        
                        <br />
                        
                        
                    </div><!--span8-->
                    <div class="span4">
                        @if(Auth::user()->tipo=='admin')
                            {!! Form::open(array('url'=>'documentacion/lista', 'method'=>'GET','autocomplete'=>'off', 'role'=>'search')) !!}
                            <p>
                                <span class="field"><input type="text" name="titulo_ins" id="rut" class="input-large" required="" placeholder="Titulo de instrucciones"  value="{{$instrucciones->titulo}}" /></span>
                            </p>
                            <p>
                                <span class="field"><textarea id="autoResizeTA" name="desc_ins" cols="80" rows="5" class="span5" style="resize: vertical; resize: horizontal;" placeholder="instrucciones"> {{$instrucciones->descripcion}} </textarea></span> 
                            </p>
                            &nbsp;&nbsp;<button type="submit" class="btn btn-success">Buscar</button>
                            {{Form::close()}}
                            <br>
                        @else
                        <h4 class="widgettitle nomargin">{{$instrucciones->titulo}}</h4>
                        <div class="widgetcontent bordered">
                              {{$instrucciones->descripcion}}
                        </div><!--widgetcontent-->
                        @endif
                      
  
                        
                        <h4 class="widgettitle">Procesos recientemente agregados</h4>
                        <div class="widgetcontent">
                            <div id="accordion" class="accordion">
                                @foreach($procesos as $proceso)
                                    <h3><a href="#">{{$proceso->nombre_proceso}}</a></h3>
                                    <div>
                                        <ul >
                                            <li>Responsable: {{$proceso->nombre_user}} {{$proceso->apellido_user}}</li>
                                            <li>Fecha de creación: {{$proceso->fecha_inicio}}</li>
                                        </ul>
                                    </div>
                                @endforeach
                            </div><!--#accordion-->
                        </div><!--widgetcontent-->


                    </div><!--span4-->
                </div><!--row-fluid-->
            </div><!--contentinner-->
        </div><!--maincontent-->

@endsection
