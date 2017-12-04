@extends ('layouts.tema')
@section ('contenido')
<div class="pagetitle">
    <h1>Editar usuario de id:{{ $usuario->id }}</h1>
</div><!--pagetitle-->

<div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Información general</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
        		{!!Form::model($usuario, ['method'=>'PATCH', 'route'=>['usuarios.update', $usuario->id],'class'=>'stdform stdform2','autocomplete'=>'off']) !!}
        		{{Form::token()}}
                <p>
                    <label>Nombre</label>
                    <span class="field"><input type="text" name="nombre" id="nombre" class="input-xxlarge" value="{{$usuario->nombre}}" /></span>
                </p>
                <p>
                    <label>Apellido</label>
                    <span class="field"><input type="text" name="apellido" id="apellido" class="input-xxlarge" value="{{$usuario->apellido}}" /></span>
                </p>
                <p>
                    <label>Contraseña</label>
                    <span class=field><input type="password" name="password" id="password" class="input-xxlarge" value="" required="" /></span>
                </p>

                <p>
                    <label>Email</label>
                    <span class="field"><input type="text" name="email" id="email" class="input-xxlarge" value="{{$usuario->email}}" /></span>
                </p>

                <p>
                    <label>Fecha de nacimiento</label>
                    <span class="field"><input type="text" name="fecha_nac" id="fecha_nac" class="input-xxlarge" value="{{$usuario->fecha_nac}}" /></span>
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