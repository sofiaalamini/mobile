import 'package:flutter/material.dart';

// Botão azul grande. Fica azul claro e desligado quando "ativo" é falso.
class BotaoAzul extends StatelessWidget {
  const BotaoAzul({
    super.key,
    required this.texto,
    required this.onPressed,
    this.ativo = true,
  });

  final String texto;
  final VoidCallback onPressed;
  final bool ativo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: ElevatedButton(
        onPressed: ativo ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3797EF),
          disabledBackgroundColor: const Color(0xFFB2DFFC),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(texto, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
