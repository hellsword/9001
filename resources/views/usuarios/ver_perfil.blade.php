@extends ('layouts.tema_perfil')
@section ('contenido')

<div class="pagetitle">
    <h1>Perfil de usuario con id: {{ Auth::user()->id}}</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner content-editprofile">
        <h4 class="widgettitle nomargin">Información básica</h4>
        <div class="widgetcontent bordered">
            <div class="row-fluid" >
                {!!Form::model($usuario, ['method'=>'PATCH', 'route'=>['usuarios.update', $usuario->id],'class'=>'editprofileform','autocomplete'=>'off']) !!}
                {{Form::token()}}
                    <h4>Información de sesión</h4>
                    <p>
                        <label>Email:</label>
                        <input type="text" name="email" class="input-xxlarge" value="{{$usuario->email}}" required="" />
                    </p>
                    <p>
                        <label>Contraseña:</label>
                        <input type="password" name="password" class="input-xxlarge" value="" required="" />
                    </p>
                    <p>
                        <a href="">Mostrar contraseña</a>
                    </p>
                    
                    <br />
                    
                    <h4>Información personal</h4>
                    <p>
                        <label>RUT</label>
                        <input type="text" name="rut" class="input-xxlarge" value="{{$usuario->rut}}" />
                    </p>
                    <p>
                        <label>Nombre</label>
                        <span class="field"><input type="text" name="nombre" id="nombre" class="input-xxlarge" value="{{$usuario->nombre}}" /></span>
                    </p>
                    <p>
                        <label>Apellido</label>
                        <span class="field"><input type="text" name="apellido" id="apellido" class="input-xxlarge" value="{{$usuario->apellido}}" /></span>
                    </p>
                    <p>
                        <label>Tipo de usuario</label>
                        <input type="text" name="tipo" class="input-xxlarge" value="{{$usuario->tipo}}" readonly="" />
                    </p>
                    <p>
                        <label>Fecha de nacimiento</label>
                        <input type="text" name="fecha_nac" class="input-xxlarge" value="{{$usuario->fecha_nac}}" />
                    </p>
                    
                    <br />

                @if(Auth::user()->tipo=='personal')
                    <p>
                        <label>Ocupación</label>
                        <input type="text" name="ocupacion" class="input-xxlarge" value="{{$personal->ocupacion}}" />
                    </p>
                    <p>
                        <label>Horarios</label>
                        <span class="field"><textarea id="horarios" name="horarios" cols="80" rows="5" class="span5" style="resize: vertical" >{{$personal->horarios}}</textarea></span> 
                    </p>
                 @endif
                    
                    <h4>Información de contacto</h4>

                    @foreach($contacto as $item)
                        @if($item->medio=='telefono')
                            <p>
                                <label>Teléfono</label>
                                <input type="text" name="telefono" class="input-xxlarge" value="{{$item->contacto}}" />
                            </p>
                        @endif
                        @if($item->medio=='facebook')
                            <p>
                                <label>Facebook</label>
                                <input type="text" name="facebook" class="input-xxlarge" value="{{$item->contacto}}" />
                            </p>
                        @endif
                    @endforeach
                    {{$contacto->render()}}
                    <br />
                    <p>
                        <button type="submit" class="btn btn-primary">Actualizar</button> &nbsp;  <a href="/home" class="btn btn-danger">Cancelar</a>  
                    </p>
                {!!Form::close()!!}
            </div><!--row-fluid-->
        </div><!--widgetcontent-->
    </div><!--contentinner-->
</div><!--maincontent-->

@endsection