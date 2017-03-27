@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Criar Notícia</h1>
    <p class="lead">Criar novo noticia abaixo</p>
    <hr>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Criar noticia</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('noticias.store') }}">
                    <!--Obrigatorio em todo formlario-->
                    <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">

                        <div class="form-group">
                            <label for="titulo" class="col-md-4 control-label">Título</label>

                            <div class="col-md-6">
                                <input id="titulo" type="text" class="form-control" name="titulo" required autofocus>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="data" class="col-md-4 control-label">Data</label>

                            <div class="col-md-6">
                                <input id="data" type="date" class="form-control" name="data" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="texto" class="col-md-4 control-label">Texto</label>

                            <div class="col-md-6">
                                <textarea id="texto" rows="5"  class="form-control" name="texto" required></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Criar Noticia
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
