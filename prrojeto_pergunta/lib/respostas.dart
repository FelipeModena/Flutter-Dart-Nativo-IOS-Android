import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onPress;
  const Respostas(this.texto, {Key? key, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(12),
        child: ElevatedButton(
            onPressed: onPress,
            child: Text(
              texto,
              style: const TextStyle(color: Colors.yellow),
            )));
  }
}
