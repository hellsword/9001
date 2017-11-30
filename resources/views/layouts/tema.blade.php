<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>9001</title>

<link rel="stylesheet" href="{{ asset('extra/css/bootstrap.css') }}">

<link rel="stylesheet" href="{{ asset('katniss/css/style.default.css') }}">
<link rel="stylesheet" href="{{ asset('katniss/prettify/prettify.css') }}">
<link rel="stylesheet" href="{{ asset('katniss/css/jquery.ui.css') }}">

<script type="text/javascript" src="{!! asset('katniss/prettify/prettify.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-1.9.1.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-migrate-1.1.1.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-ui-1.9.2.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.flot.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.flot.resize.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/bootstrap.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.cookie.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/custom.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.smartWizard.min.js') !!}"></script>


<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
</head>

<body>

<div class="mainwrapper">
    
    <!-- START OF LEFT PANEL -->
    <div class="leftpanel">
        <?php ?>
        <div class="logopanel">
            <h1><a href="/home">ISO 9001 <span>v2015</span></a></h1>
        </div><!--logopanel-->
        
        <div class="datewidget">Hoy es <?php echo date("l")?>, <?php echo date("d/m/Y"); echo " " . date("h:i").date("a");?></div>
    
        <div class="searchwidget">
            <form action="results.html" method="post">
                <div class="input-append">
                    <input type="text" class="span2 search-query" placeholder="Search here...">
                    <button type="submit" class="btn"><span class="icon-search"></span></button>
                </div>
            </form>
        </div><!--searchwidget-->
        
        
        <!-- MENU IZQUIERDO -->
        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
                <li class="nav-header">Main Navigation</li>
                <li class="dropdown"><a href=""><span class="icon-briefcase"></span> Objetivos</a>
                    <ul>
                        <li><a href="/objetivo">Lista de objetivos</a></li>
                        <li><a href="/objetivo/create">Crear objetivo</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="icon-briefcase"></span> Mis contactos</a>
                    <ul>
                        <li><a href="/listado">Ver lista</a></li>
                        <li><a href="/lista_contactos">Agregar contacto</a></li>
                    </ul>
                </li>
                <li><a href="/lista"><span class="icon-picture"></span> Recursos humanos</a></li>
                <li><a href="/documentacion"><span class="icon-picture"></span> Documentación</a></li>
                <li class="dropdown"><a href=""><span class="icon-th-list"></span> Procesos</a>
                    <ul>
                        <li><a href="/procesos">Ver listado de procesos</a></li>
                        <li><a href="/nuevo_proceso">Proceso nuevo</a></li>
                    </ul>
                </li>
                <li><a href="/areas_procesos"><span class="icon-font"></span> Áreas de proceso</a></li>
                <li class="dropdown"><a href=""><span class="icon-pencil"></span> Gestión de riesgos</a>
                    <ul>
                        <li><a href="/riesgos">Ver riesgos</a></li>
                        <li><a href="/riesgos/create">Agregar nuevo riesgo</a></li>
                    </ul>
                </li>
                 <li class="dropdown"><a href=""><span class="icon-pencil"></span>Medición</a>
                    <ul>
                        <li><a href="/medicion">Medición De Procesos</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        
        
    </div><!--mainleft-->
    <!-- END OF LEFT PANEL -->
    
    <!-- START OF RIGHT PANEL -->
    <div class="rightpanel">
        <div class="headerpanel">
            <a href="" class="showmenu"></a>
            
            <div class="headerright">
                
            @if(Auth::check())
            <div class="dropdown userinfo">
            <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="/page.html">Hola, {{ Auth::user()->nombre}} {{ Auth::user()->apellido}} <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="/usuarios/ver_perfil"><span class="icon-edit"></span> Mi perfil</a></li>
                <li><a href=""><span class="icon-wrench"></span> Ajustes</a></li>
                <li><a href=""><span class="icon-eye-open"></span> Privacy Settings</a></li>
                 @if(Auth::user()->tipo=='admin')
                 <li><a href="/usuarios/create"><i class="icon-user"></i> Crear Usuario</a></li>
                 <li><a href="{{url('/lista')}}"><i class="icon-list-alt"></i> Lista de Usuarios</a></li>
                 @endif
                 <li class="divider"></li>
                <li><a href="{{url('/logout')}}"><span class="icon-off"></span> Cerrar sesión</a></li>
            </ul>
            </div><!--dropdown-->
            @endif
            
            </div><!--headerright-->
            
        </div><!--headerpanel-->
        <div class="breadcrumbwidget">
            
        </div><!--breadcrumbwidget-->
      
        @yield('contenido')
        
    </div><!--mainright-->
    <!-- END OF RIGHT PANEL -->
    
    <div class="clearfix"></div>
    
    <div class="footer">
        <div class="footerleft">Sistema ISO 9001 v.2015</div>
        <div class="footerright">&copy; ThemePixels - <a href="http://twitter.com/themepixels">Follow me on Twitter</a> - <a href="http://dribbble.com/themepixels">Follow me on Dribbble</a></div>
    </div><!--footer-->

    
</div><!--mainwrapper-->

<script type="text/javascript">
    jQuery(document).ready(function(){
        // Smart Wizard     
        jQuery('#wizard').smartWizard({onFinish: onFinishCallback});
        jQuery('#wizard2').smartWizard({onFinish: onFinishCallback});
        jQuery('#wizard3').smartWizard({onFinish: onFinishCallback});
        jQuery('#wizard4').smartWizard({onFinish: onFinishCallback});
        
        function onFinishCallback(){
            alert('Finish Clicked');
        } 
        
        jQuery(".inline").colorbox({inline:true, width: '60%', height: '500px'});
        
        jQuery('select, input:checkbox').uniform();
    });
</script>
</body>
</html>
