import 'package:flutter/material.dart';

import 'telas/inicio_tela.dart';
import 'telas/login_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioTela(),
        '/login': (context) => const LoginTela(),
      },
    );
  }
}
