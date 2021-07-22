import 'package:flutter/material.dart';
import 'package:prrojeto_pergunta/questao.dart';
import 'package:prrojeto_pergunta/respostas.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List perguntas;
  final void Function() responser;

  const Questionario(
      {Key? key,
      required this.perguntas,
      required this.responser,
      required this.perguntaSelecionada})
      : super(key: key);

  bool get temPerguntaSelecinada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map> respostas = temPerguntaSelecinada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(children: <Widget>[
      Questao(perguntas[perguntaSelecionada]['texto'].toString()),
      ...respostas
          .map((resp) => Respostas(resp['text'].toString(), onPress: responser))
          .toList(),
    ]);
  }
}
