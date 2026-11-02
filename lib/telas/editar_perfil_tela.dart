import 'package:flutter/material.dart';

import '../widgets/campo_perfil.dart';
import '../widgets/foto_perfil.dart';

class EditarPerfilTela extends StatelessWidget {
  const EditarPerfilTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leadingWidth: 90,
        leading: TextButton(
          onPressed: () {},
          child: const Text('Cancelar', style: TextStyle(color: Colors.black)),
        ),
        title: const Text('Editar perfil', style: TextStyle(fontSize: 16)),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Concluir'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const FotoPerfil(),

          const CampoPerfil(titulo: 'Nome', valor: 'Sofia Alamini'),
          const CampoPerfil(titulo: 'Usuário', valor: 'sofia_a'),
          const CampoPerfil(titulo: 'Site', valor: ''),
          const CampoPerfil(
            titulo: 'Bio',
            valor: 'Café, música e boas ideias ☕🎶\nUm dia de cada vez.',
          ),

          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Mudar para conta profissional'),
            ),
          ),

          const SizedBox(height: 16),
          const Text(
            'Informações privadas',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const CampoPerfil(titulo: 'E-mail', valor: 'sofia@exemplo.com'),
          const CampoPerfil(titulo: 'Telefone', valor: '+55 11 91234-5678'),
          const CampoPerfil(titulo: 'Gênero', valor: 'Feminino'),
        ],
      ),
    );
  }
}
