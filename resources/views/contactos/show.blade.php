@extends ('layouts.tema')
@section ('contenido')

<div class="pagetitle">
    <h1>Informacion del usuario</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
            <tr>
                <td>Medio</td>
                <td>Contacto</td>   
            </tr>
            @foreach($contac as $con)
            <tr>
            <td>{{$con->medio}}</td>
            <td>{{$con->contacto}}</td>
            </tr>
            @endforeach
        </table>
        {{$contac->render()}}
    </div>
</div>
@endsection