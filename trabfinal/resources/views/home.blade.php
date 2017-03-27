@extends('layouts.app')

@section('content')


<div class="container">
    @if(auth()->user()->type==2)

        <div id="flex-box">
            <div>
              <h1>Área Administrativa</h1>
            </div>

            <div id="flex-item">
              <a href="{{ route('veiculos.index') }}" >Visualizar Veículos</a>
              <a href="{{ route('vistorias.index') }}" >Visualizar Revisões</a>
              <a href="{{ route('servicos.index') }}" >Visualizar Serviços</a>
              <a href="{{ route('noticias.create') }}" >Criar Notícias</a>
            </div>
        </div>
    @else


    <a href="{{ route('veiculos.create') }}" class="btn btn-primary" >Cadastrar Veículo</a>
    <a href="{{ route('vistorias.index') }}" class="btn btn-primary"  >Visualizar Revisões</a>
    <a href="{{ route('formularios.create') }}" class="btn btn-primary" >Solicitar Revisão</a>
    <br><br>
    <div class="panel panel-default">
      <div class="panel-heading"><h4>Notícias</h4></div>
 <div class="panel-body">
    @foreach($noticias as $n)
      <h4>{{$n->titulo}}</h4>
      <i>{{$n->data}}</i>
      <br><br>
      <p>{{$n->texto}}</p>
      <hr>
    @endforeach
    </div>
  </div>
    @endif

</div>
@endsection
