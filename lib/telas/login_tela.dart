import 'package:flutter/material.dart';

import '../widgets/botao_azul.dart';
import '../widgets/logo_instagram.dart';

// Tela 2: formulário de login. O botão só ativa quando os dois campos têm texto.
class LoginTela extends StatefulWidget {
  const LoginTela({super.key});

  @override
  State<LoginTela> createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
  final usuario = TextEditingController();
  final senha = TextEditingController();

  // Devolve a mensagem de erro do campo de usuário, ou null se estiver certo.
  String? get erroUsuario {
    final texto = usuario.text.trim();
    if (texto.isEmpty) return null; // ainda não digitou: não mostra erro

    if (texto.contains('@')) {
      final email = RegExp(r'^[\w.+-]+@[\w-]+(\.[\w-]+)+$');
      return email.hasMatch(texto) ? null : 'Digite um e-mail válido';
    }
    if (RegExp(r'^[\d\s()+-]+$').hasMatch(texto)) {
      final digitos = texto.replaceAll(RegExp(r'\D'), '');
      return digitos.length >= 10 && digitos.length <= 15
          ? null
          : 'Digite um número de celular válido';
    }
    final nome = RegExp(r'^[A-Za-z0-9._]{1,30}$');
    return nome.hasMatch(texto) ? null : 'Use só letras, números, . e _';
  }

  bool get preenchido =>
      usuario.text.trim().isNotEmpty && erroUsuario == null && senha.text.isNotEmpty;

  @override
  void dispose() {
    usuario.dispose();
    senha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  const SizedBox(height: 24),
                  const Center(child: LogoInstagram()),
                  const SizedBox(height: 32),
                  TextField(
                    controller: usuario,
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: 'Username, email or mobile number',
                      errorText: erroUsuario,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: senha,
                    obscureText: true,
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password?'),
                    ),
                  ),
                  BotaoAzul(texto: 'Log in', ativo: preenchido, onPressed: () {}),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.facebook, color: Color(0xFF3797EF)),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Log in with Facebook'),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('OR', style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
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
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Instagram or Facebook',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
