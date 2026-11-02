import 'package:flutter/material.dart';

// Foto redonda com o botão de trocar a foto embaixo.
class FotoPerfil extends StatelessWidget {
  const FotoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/foto.jpg'),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {},
          child: const Text('Alterar foto do perfil'),
        ),
      ],
    );
  }
}
