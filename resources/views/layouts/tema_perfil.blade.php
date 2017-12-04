<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>9001</title>

<link rel="stylesheet" href="{{ asset('extra/css/bootstrap.css') }}">

<link rel="stylesheet" href="{{ asset('katniss/css/style.default.css') }}">
<link rel="stylesheet" href="{{ asset('katniss/prettify/prettify.css') }}">

<script type="text/javascript" src="{!! asset('katniss/prettify/prettify.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-1.9.1.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-migrate-1.1.1.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery-ui-1.9.2.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.flot.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.flot.resize.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/bootstrap.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/jquery.cookie.js') !!}"></script>
<script type="text/javascript" src="{!! asset('katniss/js/custom.js') !!}"></script>


<!-- SweetAlert2 --> 
<script type="text/javascript" src="{!! asset('js/sweetalert2/sweetalert2.all.js') !!}"></script>

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
        
        <div class="datewidget">Hoy es <?php echo date("l")?>, <?php echo date("d/m/Y").", ".date("Y"); echo " " . date("h:i").date("a");?></div>
    
        <div class="searchwidget">
            <form action="results.html" method="post">
                <div class="input-append">
                    <input type="text" class="span2 search-query" placeholder="Search here...">
                    <button type="submit" class="btn"><span class="icon-search"></span></button>
                </div>
            </form>
        </div><!--searchwidget-->
        
        <!--
        <div class="plainwidget">
            <small>Using 16.8 GB of your 51.7 GB </small>
            <div class="progress progress-info">
                <div class="bar" style="width: 20%"></div>
            </div>
            <small><strong>38% full</strong></small>
        </div> -->
        
        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
                <li><a href="/usuarios/ver_perfil"><span class="icon-picture"></span> Información básica</a></li>
                <li><a href="/formacion/create"><span class="icon-picture"></span> Información de formación</a></li>
            </ul>
        </div><!--leftmenu-->
        
    </div><!--mainleft-->
    <!-- END OF LEFT PANEL -->
    
    <!-- START OF RIGHT PANEL -->
    <div class="rightpanel">
        <div class="headerpanel">
            <a href="" class="showmenu"></a>
            
            <div class="headerright">
                
            @if(Auth::check())
            <div class="dropdown userinfo">
            <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="/page.html">Hola, {{ Auth::user()->nombre}} {{ Auth::user()->apellido}}<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="/usuarios/ver_perfil"><span class="icon-edit"></span> Editar perfil</a></li>
                <li><a href=""><span class="icon-wrench"></span>Ajustes</a></li>
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

</script>

@include('sweet::alert')
</body>
</html>
