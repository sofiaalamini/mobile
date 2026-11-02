import 'package:flutter/material.dart';

// Uma linha da tela: texto do lado esquerdo e campo para digitar do lado direito.
class CampoPerfil extends StatelessWidget {
  const CampoPerfil({super.key, required this.titulo, required this.valor});

  final String titulo;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 80, child: Text(titulo)),
        Expanded(
          child: TextFormField(initialValue: valor, maxLines: null),
        ),
      ],
    );
  }
}
