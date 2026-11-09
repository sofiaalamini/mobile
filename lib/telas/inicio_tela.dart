import 'package:flutter/material.dart';

import '../widgets/botao_azul.dart';
import '../widgets/logo_instagram.dart';

// Tela 1: conta já conhecida (foto + nome) e botão "Log in".
class InicioTela extends StatelessWidget {
  const InicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoInstagram(),
                    const SizedBox(height: 24),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/foto.jpg'),
                    ),
                    const SizedBox(height: 8),
                    const Text('sofia_a', style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 16),
                    BotaoAzul(
                      texto: 'Log in',
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Switch accounts'),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
