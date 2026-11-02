import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfileScreen(),
    );
  }
}

const _blue = Color(0xFF3897F0);
const _text = Color(0xFF262626);
const _line = Color(0xFFDBDBDB);

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _avatar(),
                  const _Field(label: 'Nome', value: 'Sofia Alamini'),
                  const _Field(label: 'Usuário', value: 'sofia_a'),
                  const _Field(label: 'Site', hint: 'Site'),
                  const _Field(label: 'Bio', isBio: true, last: true),
                  const Divider(height: 1, thickness: 1, color: _line),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Text(
                      'Mudar para conta profissional',
                      style: TextStyle(color: _blue, fontSize: 13),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 28, 16, 8),
                    child: Text(
                      'Informações privadas',
                      style: TextStyle(
                        color: _text,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const _Field(label: 'E-mail', value: 'sofia@exemplo.com'),
                  const _Field(label: 'Telefone', value: '+55 11 91234-5678'),
                  const _Field(label: 'Gênero', value: 'Feminino'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 48,
      color: const Color(0xFFF8F8F8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Text('Cancelar',
                style: TextStyle(color: _text, fontSize: 14)),
          ),
          const Text(
            'Editar perfil',
            style: TextStyle(
              color: _text,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Concluir',
              style: TextStyle(
                color: _blue,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 14),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xFFE0B9A8),
            backgroundImage: AssetImage('assets/foto.jpg'),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Alterar foto do perfil',
              style: TextStyle(
                color: _blue,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Field extends StatelessWidget {
  final String label;
  final String? value;
  final String? hint;
  final bool isBio;
  final bool last;

  const _Field({
    required this.label,
    this.value,
    this.hint,
    this.isBio = false,
    this.last = false,
  });

  @override
  Widget build(BuildContext context) {
    final Widget content;
    if (isBio) {
      content = const Text.rich(
        TextSpan(
          style: TextStyle(color: _text, fontSize: 13, height: 1.3),
          children: [
            TextSpan(text: 'Café, música e boas ideias ☕🎶'),
            TextSpan(text: '\nUm dia de cada vez.'),
          ],
        ),
      );
    } else {
      content = Text(
        value ?? hint ?? '',
        style: TextStyle(
          color: value == null ? const Color(0xFFC7C7C7) : _text,
          fontSize: 13,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Text(label,
                  style: const TextStyle(color: _text, fontSize: 13)),
            ),
          ),
          Expanded(
            child: Container(
              constraints: const BoxConstraints(minHeight: 40),
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: last
                    ? null
                    : const Border(
                        bottom: BorderSide(color: _line, width: 1)),
              ),
              margin: const EdgeInsets.only(right: 16),
              child: content,
            ),
          ),
        ],
      ),
    );
  }
}
