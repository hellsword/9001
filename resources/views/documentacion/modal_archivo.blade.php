<div class="modal fade modal-slide-in-right" aria-hidden="true"
role="dialog" tabindex="-1" id="modal_archivo-delete-{{$archivo->num_archivo}}">
	{{Form::Open(array('action'=>array('ArchivoController@destroy',$archivo->num_archivo),'method'=>'delete'))}}
	<input type="hidden" name="id_doc" value="{{$archivo->id_doc}}">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
				aria-label="Close" onclick="si_css()">
                     <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">Eliminar archivo</h4>
			</div>
			<div class="modal-body">
				<p>Confirme si desea Eliminar el archivo {{$archivo->num_archivo}}-{{$archivo->titulo}}</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="si_css()">Cerrar</button>
				<button type="submit" class="btn btn-primary" onclick="si_css()">Confirmar</button>
			</div>
		</div>
	</div>
	{{Form::Close()}}

</div>


<script type="text/javascript">

  function si_css() {
    document.styleSheets[0].disabled = !document.styleSheets[0].disabled;
  }

</script>