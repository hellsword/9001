@extends('layouts.tema')
@section('contenido')

    <div class="pagetitle">
        <h1>Nuevo Usuario</h1>
    </div><!--pagetitle-->
    
    <div class="maincontent">
        <div class="contentinner">
            <h4 class="widgettitle nomargin shadowed">Información general</h4>
            <div class="widgetcontent bordered shadowed nopadding" id="formulario">
                {!!Form::open(array('url'=>'usuarios', 'method'=>'POST', 'class'=>'stdform stdform2', 'autocomplete'=>'off'))!!}
                {{Form::token()}}
                    <p>
                        <label>RUT</label>
                        <span class="field"><input type="text" name="rut" id="rut" class="input-xxlarge" /></span>
                    </p>
                    
                    <p>
                        <label>Nombre</label>
                        <span class="field"><input type="text" name="nombre" id="nombre" class="input-xxlarge" /></span>
                    </p>
                    
                    <p>
                        <label>Apellido</label>
                        <span class="field"><input type="text" name="apellido" id="apellido" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>Fecha de Nacimiento</label>
                        <span class="field"><input type="text" name="fecha_nac" id="fecha_nac" class="input-xxlarge" /></span>
                    </p>
                    
                    <p>
                        <label>Email</label>
                        <span class="field"><input type="text" name="email" id="email" class="input-xxlarge" /></span>
                    </p>

                    <p>
                        <label>Contraseña</label>
                        <span class="field"><input type="text" name="password" id="password" class="input-xxlarge" /></span>
                    </p>
                    
                    <p>
                        <label>Tipo de usuario</label>
                        <span class="field"><select name="tipo" id="tipo" class="uniformselect" onchange="cambia_tipo()">
                            <option value="admin">Administrador</option>
                            <option value="personal">Personal</option>
                        </select></span>
                    </p>
                    <p></p>

                    <div id="adicional">
                        <div id="extra"></div>
                    </div>

                    <br>

                    <h4 class="widgettitle nomargin shadowed">Información de contacto</h4>
                    <p>
                        <label>Teléfono</label>
                        <span class="field"><input type="text" name="telefono" id="telefono" class="input-xxlarge" /></span>
                    </p>
                    <p>
                        <label>Facebook</label>
                        <span class="field"><input type="text" name="facebook" id="facebook" class="input-xxlarge" /></span>
                    </p>
                                            
                    <p class="stdformbutton">
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                        <button type="reset" class="btn">Reiniciar</button>
                    </p>
                {!!Form::close()!!}
            </div><!--widgetcontent-->
        </div>
    </div>


<script type="text/javascript">
    //Escoger modo de pago
    function cambia_tipo(){
        
        var extra = document.getElementById("extra");   
        extra.parentNode.removeChild(extra);

        document.getElementById('adicional').insertAdjacentHTML( 'beforeend', '<div id="extra"></div>' ); 

        var tipo_usuario = document.getElementById("tipo").value;     //Obtiene el tipo seleccionado
        if(tipo_usuario == 'personal'){
            var str = '<p>'+
                        '<label>Ocupación</label>'+
                        '<span class="field"><input type="text" name="ocupacion" id="ocupacion" class="input-xxlarge" /></span>'+
                      '</p>'+
                      '<p>'+
                        '<label>Horarios</label>'+
                        '<span class="field"><textarea id="horarios" name="horarios" cols="80" rows="5" class="span5" style="resize: vertical" placeholder="Lunes a Viernes 9:00-17:00\nSabado 9:00-14:00"></textarea></span> '+
                      '</p>';
            document.getElementById('extra').innerHTML = str;
        }
    }

</script>

@endsection
