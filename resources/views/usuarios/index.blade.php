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
        <td>Rut</td>
        <td>Nombre</td>
        <td>Apellido</td>
        <td colspan="3">&nbsp;</td>
       </tr>
      @foreach($user as $item)
        <tr>
        <td>{{$item->rut}}</td>
        <td>{{$item->nombre}}</td>
        <td>{{$item->apellido}}</td>
        <td>
          {{Form::Open(array('action'=>array('UsuarioController@ver_ficha'), 'method'=>'GET', 'id'=>$item->id.'-ver' ))}}
            <input type="hidden" name="id_usuario" value="{{$item->id}}">
            <a onclick="ver_ficha({{$item->id}})" ><i class="icon-eye-open"></i></a>
          {{ Form::close() }}
        </td>
        <td> <a href="{{URL::action('UsuarioController@edit',$item->id)}}"><i class="icon-edit"></i></a> </td> 
        <td> <a href="{{URL::action('FormacionController@edit',$item->id)}}"><i class="icon-book"></i></a> </td>   
        <td> 
          {{Form::Open(array('action'=>array('UsuarioController@destroy', $item->id), 'method'=>'delete', 'id'=>$item->id.'-destroy' ))}}
            <input type="hidden" name="_method" value="DELETE">
            <a onclick="eliminar({{$item->id}})" ><i class="icon-remove"></i></a>
          {{ Form::close() }}
        </td>
        </tr>
       
       @endforeach
       </table>
       {{$user->render()}}

   </div>
</div>


<script type="text/javascript">

 function eliminar(id){

    swal({
      title: '¿Seguro que desea eliminar a este usuario?',
      text: "Una vez eliminado, no se podrá recuperar",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '¡Sí, elimínalo!'
    }).then((result) => {
      if (result.value) {
        document.getElementById(id+'-destroy').submit();
      }
    })
  }


  function ver_ficha(id){
    document.getElementById(id+'-ver').submit();
  }

</script>

@endsection