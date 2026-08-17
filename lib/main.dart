import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const FrasesDoDialApp());
}

class FrasesDoDialApp extends StatelessWidget {
  const FrasesDoDialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do Dia',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const FrasesScreen(),
    );
  }
}

class FrasesScreen extends StatefulWidget {
  const FrasesScreen({Key? key}) : super(key: key);

  @override
  State<FrasesScreen> createState() => _FrasesScreenState();
}

class _FrasesScreenState extends State<FrasesScreen> {
  late String currentPhrase;
  late String currentAuthor;
  final Random random = Random();

  static const List<Map<String, String>> phrases = [
    {'text': 'A maior glória não é nunca cair, mas sim levantar-se a cada queda.', 'author': 'Confúcio'},
    {'text': 'O sucesso é a soma de pequenos esforços repetidos dia após dia.', 'author': 'Robert Collier'},
    {'text': 'Acredite que você pode, e você está no meio do caminho.', 'author': 'Theodore Roosevelt'},
    {'text': 'A única forma de fazer um excelente trabalho é amar o que você faz.', 'author': 'Steve Jobs'},
    {'text': 'Não é a montanha que conquistamos, mas a nós mesmos.', 'author': 'Edmund Hillary'},
    {'text': 'O futuro pertence àqueles que acreditam na beleza de seus sonhos.', 'author': 'Eleanor Roosevelt'},
    {'text': 'Você é mais bravo do que acredita, mais forte do que parece e mais inteligente do que pensa.', 'author': 'A. A. Milne'},
    {'text': 'A persistência é o caminho do êxito.', 'author': 'Charles Chaplin'},
    {'text': 'Não há caminho para a felicidade. A felicidade é o caminho.', 'author': 'Buda'},
    {'text': 'Tudo que a mente humana pode conceber e acreditar, ela consegue realizar.', 'author': 'Napoleon Hill'},
    {'text': 'A coragem é resistência ao medo, domínio do medo – não ausência de medo.', 'author': 'Mark Twain'},
    {'text': 'Não importa o quanto você caia, o que importa é o quanto você salta.', 'author': 'Zig Ziglar'},
    {'text': 'Você não precisa ser perfeito para começar, mas precisa começar para ser perfeito.', 'author': 'Zig Ziglar'},
    {'text': 'A vida é 10% do que acontece com você e 90% de como você reage a isso.', 'author': 'Charles R. Swindoll'},
    {'text': 'Sucesso é estar caído e não desistir.', 'author': 'Euclides da Cunha'},
    {'text': 'Sonhe grande e ouça não aos que dizem que não é possível.', 'author': 'Joãozinho Trinta'},
    {'text': 'A melhor hora para plantar uma árvore era 20 anos atrás. A segunda melhor é agora.', 'author': 'Confúcio'},
    {'text': 'Você nunca falha até deixar de tentar.', 'author': 'John C. Maxwell'},
    {'text': 'O impossível é apenas um palpite de pessoas fracas.', 'author': 'Paulo Coelho'},
    {'text': 'Faça hoje o que outros não fazem, para amanhã ter o que outros não têm.', 'author': 'Desconhecido'},
    {'text': 'Se você quer algo que nunca teve, precisa fazer algo que nunca fez.', 'author': 'Desconhecido'},
    {'text': 'A diferença entre quem você é e quem você quer ser está no que você faz.', 'author': 'Bill Phillips'},
    {'text': 'Quanto maior a dificuldade, maior a glória em superá-la.', 'author': 'Epicuro'},
    {'text': 'Você é bravo o suficiente para vencer qualquer desafio.', 'author': 'Desconhecido'},
    {'text': 'Sua limitação é apenas a sua imaginação.', 'author': 'Desconhecido'},
    {'text': 'Não deixe que o que você não pode fazer interfira no que você pode fazer.', 'author': 'John Wooden'},
    {'text': 'Transformar é evoluir.', 'author': 'Albert Einstein'},
    {'text': 'Um homem pode contar seus fracassos, mas não consegue contar seus sucessos.', 'author': 'Henry Ford'},
    {'text': 'Tudo é possível para quem acredita.', 'author': 'Desconhecido'},
    {'text': 'Você é a sua melhor chance de sucesso.', 'author': 'Desconhecido'},
    {'text': 'Não há satisfação comparável à de um trabalho bem feito.', 'author': 'Aristotéles'},
    {'text': 'O sucesso é onde o planejamento e a sorte se encontram.', 'author': 'Bobby Unser'},
    {'text': 'Acima de tudo, cuide de sua paz de espírito.', 'author': 'Dalai Lama'},
    {'text': 'Todos os grandes acontecimentos começam em pequenos passos.', 'author': 'Desconhecido'},
    {'text': 'Sua história de sucesso começa com você.', 'author': 'Desconhecido'},
    {'text': 'Quanto maior o sonho, maior a determinação necessária.', 'author': 'Desconhecido'},
    {'text': 'Você é único e irrepetível.', 'author': 'Desconhecido'},
    {'text': 'O que você faz hoje pode mudar o seu amanhã.', 'author': 'Walt Disney'},
    {'text': 'Nunca é tarde para ser o que você poderia ter sido.', 'author': 'George Eliot'},
    {'text': 'Grandes coisas começam com pequenos pensamentos.', 'author': 'Desconhecido'},
    {'text': 'O desafio de hoje é a oportunidade de amanhã.', 'author': 'Desconhecido'},
    {'text': 'Se não conseguir em primeira, tente novamente.', 'author': 'Desconhecido'},
    {'text': 'Você é capaz de mais do que imagina.', 'author': 'Desconhecido'},
    {'text': 'A vida é o que você a torna.', 'author': 'Irving Berlin'},
    {'text': 'Creia em si mesmo e os outros também crerão.', 'author': 'Desconhecido'},
    {'text': 'Suas limitações são apenas ilusões.', 'author': 'Desconhecido'},
    {'text': 'Cada dia é uma chance de começar novamente.', 'author': 'Desconhecido'},
    {'text': 'Você tem mais poder do que você pensa.', 'author': 'Desconhecido'},
    {'text': 'A vida recompensa os corajosos.', 'author': 'Desconhecido'},
    {'text': 'Sua força é maior que seus medos.', 'author': 'Desconhecido'},
    {'text': 'O que você acredita, você cria.', 'author': 'Desconhecido'},
    {'text': 'Você merece tudo de bom que vem a seu caminho.', 'author': 'Desconhecido'},
    {'text': 'Sua vida é um reflexo de suas escolhas.', 'author': 'Desconhecido'},
    {'text': 'Comece onde você está, use o que você tem, faça o que você pode.', 'author': 'Arthur Ashe'},
    {'text': 'O melhor presente que você pode dar é o seu tempo.', 'author': 'Desconhecido'},
    {'text': 'Você é seu próprio herói.', 'author': 'Desconhecido'},
    {'text': 'Acredite e receberá.', 'author': 'Desconhecido'},
    {'text': 'Você está apenas um passo adiante de algo incrível.', 'author': 'Desconhecido'},
    {'text': 'Toda jornada começa com um passo.', 'author': 'Lao Tzu'},
    {'text': 'Você é a mudança que você gostaria de ver no mundo.', 'author': 'Mahatma Gandhi'},
    {'text': 'Sua vida é sua responsabilidade, não dos outros.', 'author': 'Desconhecido'},
    {'text': 'O medo é apenas papel molhado.', 'author': 'Desconhecido'},
    {'text': 'Você faz a diferença.', 'author': 'Desconhecido'},
    {'text': 'Cada momento é uma nova chance.', 'author': 'Desconhecido'},
    {'text': 'Você é mais do que suficiente.', 'author': 'Desconhecido'},
    {'text': 'Sua vida é um presente aberto.', 'author': 'Desconhecido'},
    {'text': 'Você é a resposta que estava procurando.', 'author': 'Desconhecido'},
    {'text': 'Creia que você consegue e você conseguirá.', 'author': 'Theodore Roosevelt'},
    {'text': 'Você é capaz de conquistar o mundo.', 'author': 'Desconhecido'},
    {'text': 'Cada queda é um aprendizado.', 'author': 'Desconhecido'},
    {'text': 'Você é mais valioso do que ouro.', 'author': 'Desconhecido'},
    {'text': 'Sua mente é poderosa, use-a com sabedoria.', 'author': 'Desconhecido'},
    {'text': 'O sucesso começa com a decisão.', 'author': 'Desconhecido'},
    {'text': 'Você está no controle da sua vida.', 'author': 'Desconhecido'},
    {'text': 'Cada dia é uma vitória.', 'author': 'Desconhecido'},
    {'text': 'Você merece felicidade e sucesso.', 'author': 'Desconhecido'},
    {'text': 'A força está dentro de você.', 'author': 'Desconhecido'},
    {'text': 'Seu potencial é infinito.', 'author': 'Desconhecido'},
    {'text': 'Você é inspiração para os outros.', 'author': 'Desconhecido'},
    {'text': 'Cada sonho é alcançável.', 'author': 'Desconhecido'},
    {'text': 'Você é a chave do seu próprio sucesso.', 'author': 'Desconhecido'},
    {'text': 'Nada é impossível para quem quer.', 'author': 'Desconhecido'},
    {'text': 'Você tem tudo que precisa dentro de você.', 'author': 'Desconhecido'},
    {'text': 'Sua vida é o seu maior projeto.', 'author': 'Desconhecido'},
    {'text': 'Você é uma estrela brilhante.', 'author': 'Desconhecido'},
    {'text': 'O melhor está por vir.', 'author': 'Desconhecido'},
    {'text': 'Você é invencível.', 'author': 'Desconhecido'},
    {'text': 'Seu valor não pode ser medido.', 'author': 'Desconhecido'},
    {'text': 'Você é capaz de transformar o mundo.', 'author': 'Desconhecido'},
    {'text': 'A vida é sua aventura.', 'author': 'Desconhecido'},
    {'text': 'Você é excepcional.', 'author': 'Desconhecido'},
    {'text': 'Cada segundo é uma oportunidade.', 'author': 'Desconhecido'},
    {'text': 'Você já venceu muitas batalhas.', 'author': 'Desconhecido'},
    {'text': 'Seu futuro é brilhante.', 'author': 'Desconhecido'},
    {'text': 'Você é a solução.', 'author': 'Desconhecido'},
    {'text': 'Sua coragem é admirável.', 'author': 'Desconhecido'},
    {'text': 'Você está destinado ao sucesso.', 'author': 'Desconhecido'},
    {'text': 'A vida é o seu palco.', 'author': 'Desconhecido'},
    {'text': 'Você é um ganhador.', 'author': 'Desconhecido'},
    {'text': 'Seu esforço será recompensado.', 'author': 'Desconhecido'},
    {'text': 'Você brilha quando é você mesmo.', 'author': 'Desconhecido'},
  ];

  @override
  void initState() {
    super.initState();
    _generateNewPhrase();
  }

  void _generateNewPhrase() {
    final randomIndex = random.nextInt(phrases.length);
    setState(() {
      currentPhrase = phrases[randomIndex]['text']!;
      currentAuthor = phrases[randomIndex]['author']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey[100]!, Colors.white],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header com título
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Frases do Dia',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Logo/Icon
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 100,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50),
              // Phrase Display
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentPhrase,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '- ${currentAuthor}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              // Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _generateNewPhrase,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Gerar nova frase',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
