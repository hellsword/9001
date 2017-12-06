@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    @if(Auth::user()->tipo=='admin')
        <h1>Perfil de usuario con id: {{ Auth::user()->id}}</h1>
    @else
        <h1>Perfil de usuario</h1>
    @endif
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::model($usuario, ['method'=>'PATCH', 'route'=>['usuarios.update', $usuario->id],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
      
                    <h4>Información personal</h4>
                    <p>
                        <label>RUT</label>
                        <span class="field"><input type="text" name="rut" class="input-xxlarge" value="{{$usuario->rut}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Nombre</label>
                        <span class="field"><input type="text" name="nombre" id="nombre" class="input-xxlarge" value="{{$usuario->nombre}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Apellido</label>
                        <span class="field"><input type="text" name="apellido" id="apellido" class="input-xxlarge" value="{{$usuario->apellido}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Tipo de usuario</label>
                        <span class="field"><input type="text" name="tipo" class="input-xxlarge" value="{{$usuario->tipo}}" readonly="" readonly="" /></span>
                    </p>
                    <p>
                        <label>Fecha de nacimiento</label>
                        <span class="field"><input type="text" name="fecha_nac" class="input-xxlarge" value="{{$usuario->fecha_nac}}" readonly="" /></span>
                    </p>
                    
                    <br />

                @if(Auth::user()->tipo=='personal')
                    <p>
                        <label>Ocupación</label>
                        <span class="field"><input type="text" name="ocupacion" class="input-xxlarge" value="{{$personal->ocupacion}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Horarios</label>
                        <span class="field"><textarea id="horarios" name="horarios" cols="80" rows="5" class="span5" style="resize: vertical" readonly="">{{$personal->horarios}}</textarea></span> 
                    </p>
                 @endif
                    
                    <h4>Información de contacto</h4>

                    <p>
                        <label>Email:</label>
                        <span class="field"><input type="text" name="email" class="input-xxlarge" value="{{$usuario->email}}" required="" readonly="" /></span>
                    </p>

                    @foreach($contacto as $item)
                        @if($item->medio=='telefono')
                            <p>
                                <label>Teléfono</label>
                                <span class="field"><input type="text" name="telefono" class="input-xxlarge" value="{{$item->contacto}}" readonly="" /></span>
                            </p>
                        @endif
                        @if($item->medio=='facebook')
                            <p>
                                <label>Facebook</label>
                                <span class="field"><input type="text" name="facebook" class="input-xxlarge" value="{{$item->contacto}}" readonly="" /></span>
                            </p>
                        @endif
                    @endforeach
                    {{$contacto->render()}}
                    <br />


                    <h4>Formación</h4>
                    <p>
                        <label>Años de expeciencia</label>
                        <span class="field"><input type="text" name="rut" class="input-xxlarge" value="{{$formacion->aniosexperiencia}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Número de trabajos</label>
                        <span class="field"><input type="text" name="nombre" id="nombre" class="input-xxlarge" value="{{$formacion->Ntrabajos}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Grado</label>
                        <span class="field"><input type="text" name="apellido" id="apellido" class="input-xxlarge" value="{{$formacion->grado}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Recomendaciones</label>
                        <span class="field"><input type="text" name="tipo" class="input-xxlarge" value="{{$formacion->recomendaciones}}" readonly="" /></span>
                    </p>
                    <p>
                        <label>Curriculum</label>
                        <span class="field"><input type="text" name="fecha_nac" class="input-xxlarge" value="{{$formacion->curriculum}}" readonly="" /></span>
                    </p>


                    <p>
                         <br><a href="/usuarios" class="btn btn-danger">Volver</a>  
                    </p>
                {!!Form::close()!!}
            </div><!--row-fluid-->
        </div><!--widgetcontent-->
    </div><!--contentinner-->
</div><!--maincontent-->

@endsection