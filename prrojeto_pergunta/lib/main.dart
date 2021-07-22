// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prrojeto_pergunta/questionario.dart';
import 'package:prrojeto_pergunta/respostas.dart';
import 'package:prrojeto_pergunta/resultado.dart';
import './questao.dart';
import './respostas.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual cor favorita?',
      'respostas': [
        {'text': 'Preto', 'pontuacao': 1},
        {'text': 'Azul', 'pontuacao': 0},
        {'text': 'Vermelho', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'Animal favorito?',
      'respostas': [
        {'text': 'Cavalo', 'pontuacao': 0},
        {'text': 'Andorinha', 'pontuacao': 0},
        {'text': 'Mamute', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'Instrutor??',
      'respostas': [
        {'text': 'Ademir', 'pontuacao': 0},
        {'text': 'Modena', 'pontuacao': 1},
        {'text': 'Falavinha', 'pontuacao': 0},
      ]
    },
  ];

  void _responde(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal++;
    });
    // ignore: unnecessary_brace_in_string_interps
    print("${_perguntaSelecionada}");
  }

  bool get temPerguntaSelecinada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flluter titutlo"),
          ),
          body: temPerguntaSelecinada
              ? Questionario(
                  perguntas: _perguntas,
                  responser: _responde,
                  perguntaSelecionada: _perguntaSelecionada)
              : const Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
