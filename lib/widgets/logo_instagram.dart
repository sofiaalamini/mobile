import 'package:flutter/material.dart';

// Logo "Instagram" escrito em fonte cursiva (sem precisar de imagem).
class LogoInstagram extends StatelessWidget {
  const LogoInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Instagram',
      style: TextStyle(
        fontFamily: 'cursive',
        fontStyle: FontStyle.italic,
        fontSize: 44,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
