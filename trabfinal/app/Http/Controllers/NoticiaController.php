<?php

namespace App\Http\Controllers;

use App\Noticia;
use Illuminate\Http\Request;
use Session;
use DB;


class NoticiaController extends Controller

{
    public function __construct()
    {
          $this->middleware('auth');
    }

    public function create()
    {
      if(auth()->user()->type ==2)
      {
          return view('noticias.create');
      }
      else
      {
        $mensagem = "Desculpe, você não tem permissão para criar um noticia.";
        request()->session()->flash('danger',$mensagem);
        return redirect()->to('/home');
      }
    }

    public function store(Request $request)
    {
      Noticia::create([
          'titulo' => $request->input('titulo'),
          'data' => $request->input('data'),
          'texto' => $request->input('texto'),
      ]);
      $mensagem = "Noticia " . $request->input('nome') . " adicionado com sucesso.";
      request()->session()->flash('sucesso',$mensagem);

      return redirect()->to('/home');
    }



}
