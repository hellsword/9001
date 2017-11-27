@extends ('layouts.tema')
@section ('contenido')



<div class="pagetitle">
    <h1>Lista de usuarios</h1>
</div><!--pagetitle-->

<div class="maincontent">
    <div class="contentinner">
        <table class="table table-striped table-bordered table-condensed table-hover">
        <tr>
        </tr>
        <tr style="background-color: black; color: white;">
        <td>Id</td>
        <td>Rut</td>
        <td>Nombre</td>
        <td>Apellido</td>
        <td>Acciones</td>
       </tr>
      @foreach($user as $item)
        <tr>
        <td>{{$item->id}}</td>
        <td>{{$item->rut}}</td>
        <td>{{$item->nombre}}</td>
        <td>{{$item->apellido}}</td>
        <td> <a href="{{URL::action('ContactoController@show',$item->id)}}"><i class="icon-eye-open"></i></a> <a href="{{URL::action('UsuarioController@edit',$item->id)}}"><i class="icon-edit"></i></a> <a href="" data-target="#modal-delete-{{$item->id}}" data-toggle="modal" onclick="no_css()"><i class="icon-remove"></i></a> </td>
        </tr>
       @include('usuarios.modal')
       @endforeach
       </table>
       {{$user->render()}}

   </div>
</div>


<script type="text/javascript">

  function no_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>

@endsection