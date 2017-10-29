@extends('layouts.app')

@section('content')

<section id="two" class="wrapper style1">
        <header class="major">
            <h2>Nuevo usuario</h2>
            <p>Unete y disfruta los privilegios de ser parte de esta familia</p>
        </header>
        <div class="container" align="center">
            <form style="width: 60%; text-align: left" method="POST" action="{{ route('register') }}">
                {{ csrf_field() }}

                <div class="form-group{{ $errors->has('nombre') ? ' has-error' : '' }}">
                    Nombre:<br>
                    <div class="col-md-6">
                        <input id="nombre" type="text" class="form-control" name="nombre" value="{{ old('nombre') }}" required autofocus>

                        @if ($errors->has('nombre'))
                            <span class="help-block">
                                <strong>{{ $errors->first('nombre') }}</strong>
                            </span>
                        @endif
                    </div>
                </div><br>

                <div class="form-group{{ $errors->has('apellido') ? ' has-error' : '' }}">
                    Apellido:<br>
                    <div class="col-md-6">
                        <input id="apellido" type="text" class="form-control" name="apellido" value="{{ old('apellido') }}" required autofocus>

                        @if ($errors->has('apellido'))
                            <span class="help-block">
                                <strong>{{ $errors->first('apellido') }}</strong>
                            </span>
                        @endif
                    </div>
                </div><br>

                <div class="form-group{{ $errors->has('rut') ? ' has-error' : '' }}">
                    RUT:<br>
                    <div class="col-md-6">
                        <input id="rut" type="text" class="form-control" name="rut" value="{{ old('rut') }}" required>

                        @if ($errors->has('rut'))
                            <span class="help-block">
                                <strong>{{ $errors->first('rut') }}</strong>
                            </span>
                        @endif
                    </div>
                </div><br>

                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                    Email:<br>
                    <div class="col-md-6">
                        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                </div><br>

                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                    Contraseña:<br>
                    <div class="col-md-6">
                        <input id="password" type="password" class="form-control" name="password" required>

                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                </div><br>

                <div class="form-group">
                    Confirme la contraseña:<br>
                    <div class="col-md-6">
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                    </div>
                </div><br>

                <div class="form-group">
                    <div class="row" >
                        <div class="6u" align="right"> <a href="/" class="button special"  >Cancelar</a> </div>
                        <div id="aceptar" class="6u" align="left"> <button type="submit" class="button special">
                            Aceptar</button> 
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </section>

@endsection
