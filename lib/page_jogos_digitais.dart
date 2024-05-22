import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaJogosDigitais extends StatelessWidget {
  final String descricaoCurso = 'O curso de Criação de Jogos Digitais oferece uma formação abrangente e prática, capacitando os alunos para desenvolverem jogos inovadores e envolventes. Os estudantes aprenderão sobre design de jogos, programação, animação, narrativa interativa e técnicas de realidade aumentada e virtual. O curso prepara os alunos para atuarem em diversas áreas da indústria de jogos, como desenvolvimento de software, design gráfico, engenharia de som, produção e gerenciamento de projetos, entre outras.';

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imagens/jogos1b.jpg'), // Substitua pelo caminho do seu banner
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                descricaoCurso,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL('https://unisagrado.edu.br/graduacao/ciencia-da-computacao#gradeCurricular_Item');
                },
                child: Text('Grade Curricular'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4B0082),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL('https://www.seulink.com/corpo-docente');
                },
                child: Text('Corpo Docente'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4B0082),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
