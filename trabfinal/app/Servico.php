<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servico extends Model
{
  protected $fillable = [
    'nome',
    'valor',
    'user_id'
  ];
}
