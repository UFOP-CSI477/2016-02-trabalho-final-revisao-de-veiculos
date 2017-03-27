<?php

namespace App\Http\Controllers;
use App\Vistoria;
use App\Servico;
use App\Veiculo;
use App\Mail\EnviarFormulario;
use Illuminate\Http\Request;

class FormularioController extends Controller
{
      public function __construct()
      {
            $this->middleware('auth');
      }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      $servicos = Servico::all();
      $veiculos = veiculo::all();
      return view('formularios.create')->with('servicos',$servicos)->with('veiculos',$veiculos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



      $quilometragem = $request->input('quilometragem');
      $data = $request->input('data');
      $hora = $request->input('hora');
      $servico = $request->input('servico');
      $veiculo = $request->input('veiculo');

      \Mail::to('kelly@email.com')->send(new EnviarFormulario($veiculo,$quilometragem,$data,$hora,$servico));

       request()->session()->flash('sucesso', 'Obrigada por escolher nossos serviços, você receberá um email de confirmação com seu horário');
       return redirect()->to('/home');
    }

}
