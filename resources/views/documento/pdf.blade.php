<!DOCTYPE html>
<html>
<head>
	<title>Documento pdf</title>
</head>
<body>

	<center><h1>{{$documento->titulo}}</h1></center>

	<p>
		<label>Autor: </label> {{$documento->nombre}} {{$documento->apellido}}
	</p>

	<p>
		<label>Fecha: </label> {{$documento->fecha}}
	</p>
	<br>

	<p>
		{!!$documento->cuerpo!!}
	</p>

</body>
</html>