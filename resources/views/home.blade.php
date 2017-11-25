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

                        <img src="img/transicion_iso.png" alt="" />
                        <br>

                        <h4 class="widgettitle">Módulos</h4>
                        <ul class="widgeticons row-fluid">
                            <li class="one_fifth"><a href="/objetivo"><img src="katniss/img/gemicon/location.png" alt="" /><span>Objetivos</span></a></li>
                           <!-- <li class="one_fifth"><a href=""><img src="katniss/img/gemicon/image.png" alt="" /><span>Media</span></a></li>
                            <li class="one_fifth"><a href=""><img src="katniss/img/gemicon/reports.png" alt="" /><span>Indicadores</span></a></li>
                            <li class="one_fifth"><a href=""><img src="katniss/img/gemicon/edit.png" alt="" /><span>New Article</span></a></li> -->
                            <li class="one_fifth last"><a href=""><img src="katniss/img/gemicon/mail.png" alt="" /><span>Contactos</span></a></li>
                           <!-- <li class="one_fifth"><a href=""><img src="katniss/img/gemicon/calendar.png" alt="" /><span>Events</span></a></li> -->
                            <li class="one_fifth"><a href="/lista"><img src="katniss/img/gemicon/users.png" alt="" /><span>RRHH</span></a></li>
                            <li class="one_fifth"><a href="/procesos"><img src="katniss/img/gemicon/settings.png" alt="" /><span>Procesos</span></a></li>
                            <li class="one_fifth"><a href="/documentacion"><img src="katniss/img/gemicon/archive.png" alt="" /><span>Documentación</span></a></li>
                            <li class="one_fifth"><a href="/areas_procesos"><img src="katniss/img/gemicon/archive.png" alt="" /><span>Áreas de proceso</span></a></li>
                            <li class="one_fifth"><a href="/riesgos"><img src="katniss/img/gemicon/archive.png" alt="" /><span>Gestión de riesgos</span></a></li>
                            <li class="one_fifth"><a href=""><img src="katniss/img/gemicon/archive.png" alt="" /><span>Medición de procesos</span></a></li>
                           <!-- <li class="one_fifth last"><a href=""><img src="katniss/img/gemicon/notify.png" alt="" /><span>Notifications</span></a></li>  -->
                        </ul>
                        
                        <br />
                        
                     
                        <!--
                        
                        <h4 class="widgettitle">Recent Articles</h4>
                        <div class="widgetcontent">
                            <div id="tabs">
                                <ul>
                                    <li><a href="#tabs-1"><span class="icon-forward"></span> Technology</a></li>
                                    <li><a href="#tabs-2"><span class="icon-eye-open"></span> Entertainment</a></li>
                                    <li><a href="#tabs-3"><span class="icon-leaf"></span> Fitness &amp; Health</a></li>
                                </ul>
                                <div id="tabs-1">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Submitted By</th>
                                                <th>Date Added</th>
                                                <th class="center">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href=""><strong>Excepteur sint occaecat cupidatat non...</strong></a></td>
                                                <td><a href="">admin</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus...</strong></a></td>
                                                <td><a href="">themepixels</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus</strong></a></td>
                                                <td><a href="">johndoe</a></td>
                                                <td>Jan 01, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Quis autem vel eum iure reprehenderi...</strong></a></td>
                                                <td><a href="">amanda</a></td>
                                                <td>Jan 01, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Nemo enim ipsam voluptatem quia</strong></a></td>
                                                <td><a href="">mandylane</a></td>
                                                <td>Dec 31, 2012</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="tabs-2">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Submitted By</th>
                                                <th>Date Added</th>
                                                <th class="center">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href=""><strong>Nemo enim ipsam voluptatem quia</strong></a></td>
                                                <td><a href="">mandylane</a></td>
                                                <td>Jan 04, 2012</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Excepteur sint occaecat cupidatat non...</strong></a></td>
                                                <td><a href="">admin</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus...</strong></a></td>
                                                <td><a href="">themepixels</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus</strong></a></td>
                                                <td><a href="">johndoe</a></td>
                                                <td>Jan 01, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Quis autem vel eum iure reprehenderi...</strong></a></td>
                                                <td><a href="">amanda</a></td>
                                                <td>Jan 01, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="tabs-3">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Submitted By</th>
                                                <th>Date Added</th>
                                                <th class="center">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href=""><strong>Quis autem vel eum iure reprehenderi...</strong></a></td>
                                                <td><a href="">amanda</a></td>
                                                <td>Jan 03, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Nemo enim ipsam voluptatem quia</strong></a></td>
                                                <td><a href="">mandylane</a></td>
                                                <td>Dec 31, 2012</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Excepteur sint occaecat cupidatat non...</strong></a></td>
                                                <td><a href="">admin</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus...</strong></a></td>
                                                <td><a href="">themepixels</a></td>
                                                <td>Jan 02, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href=""><strong>Sed ut perspiciatis unde omnis iste natus</strong></a></td>
                                                <td><a href="">johndoe</a></td>
                                                <td>Jan 01, 2013</td>
                                                <td class="center"><a href="" class="btn"><span class="icon-edit"></span> Edit</a></td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                </div>
                            </div>
                        </div> -->         <!--widgetcontent-->
                        
                        
                    </div><!--span8-->
                    <div class="span4">
                        <h4 class="widgettitle nomargin">Algunas instrucciones simples</h4>
                        <div class="widgetcontent bordered">
                              Dentro de la página principal usted podrá acceder a un resumen de los elementos más importantes de la página,
                            dentro de los cuales podemos destacar el calendario de eventos y la sección con cada uno de los módulos como RRHH, 
                            Procesos, Objetivos, etc....
                        </div><!--widgetcontent-->
  
                        
                        <h4 class="widgettitle">Procesos recientemente agregados</h4>
                        <div class="widgetcontent">
                            <div id="accordion" class="accordion">
                                @foreach($procesos as $proceso)
                                    <h3><a href="#">{{$proceso->nombre_proceso}}</a></h3>
                                    <div>
                                        <ul >
                                            <li>ID: {{$proceso->id_proceso}}</li>
                                            <li>Responsable: {{$proceso->nombre_user}} {{$proceso->apellido_user}}</li>
                                            <li>Fecha de creación: {{$proceso->fecha_inicio}}</li>
                                        </ul>
                                    </div>
                                @endforeach
                            </div><!--#accordion-->
                        </div><!--widgetcontent-->

                        <!--
                        <h4 class="widgettitle nomargin">Transición</h4>
                        <a href="#transicion" data-toggle="modal"><img src="img/transicion.jpg" alt="" /></a>
                        -->

                        <!--
                        <div id="transicion" class="modal">
                           <div class="modal-header">
                              <button aria-hidden="false" data-dismiss="modal" class="close">×</button>
                              <h3>Transición ISO 9001:2008 a ISO 9001:2015</h3>
                           </div>
                           <div class="modal-body">
                              <img src="img/transicion.jpg" alt="" />
                           </div>
                           <div class="modal-footer">
                              <a class="btn" href="#">Close</a>
                              <a class="btn btn-primary" href="#">Save changes</a>
                           </div>
                        </div>
                        -->
                        
                        
                        
                    


                    </div><!--span4-->
                </div><!--row-fluid-->
            </div><!--contentinner-->
        </div><!--maincontent-->

@endsection
