import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaCienciasComputacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF29005a),
        appBar: AppBar(
          backgroundColor: Color(0xFF4B0082),
          title: Text(
            'Ciência da Computação',
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
                  image: AssetImage("assets/imagens/cdc1b.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Reduced padding
              child: Text(
                'Explore o curso de Ciência da Computação, onde você aprenderá sobre programação, '
                    'estruturas de dados, algoritmos, redes de computadores e muito mais. Prepare-se '
                    'para uma carreira em um dos campos mais dinâmicos e em demanda!',
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
                url: 'https://unisagrado.edu.br/graduacao/ciencia-da-computacao',
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
