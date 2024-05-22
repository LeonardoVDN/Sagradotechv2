import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaJogosDigitais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF29005a),
        appBar: AppBar(
          backgroundColor: Color(0xFF4B0082),
          title: Text(
            'Jogos Digitais',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Reduced spacing
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/imagens/jogos1b.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Reduced padding
              child: Text(
                'Desperte sua criatividade e habilidade técnica no curso de Criação de Jogos Digitais, onde você será capacitado para projetar e desenvolver jogos que cativam e engajam. Nosso curso oferece uma abordagem prática e completa, cobrindo desde o planejamento de narrativas envolventes até a aplicação de tecnologias de ponta em programação gráfica e inteligência artificial.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white, // White text
                ),// White text
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Reduced padding
              child: LinkText(
                url: 'https://unisagrado.edu.br/graduacao/jogos-digitais',
                text: 'Clique aqui para mais informações!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  final String url;
  final String text;

  LinkText({required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchURL(),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white, // White text
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  void _launchURL() async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $url';
    }
  }
}
