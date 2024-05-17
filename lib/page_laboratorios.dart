import 'package:flutter/material.dart';

class TelaLaboratorios extends StatefulWidget {
  @override
  _TelaLaboratoriosState createState() => _TelaLaboratoriosState();
}

class _TelaLaboratoriosState extends State<TelaLaboratorios> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> imagens = [
    'assets/imagens/LAB/UNI_7659.jpg',
    'assets/imagens/LAB/UNI_7660.jpg',
    'assets/imagens/LAB/UNI_7664.jpg',
    'assets/imagens/LAB/UNI_7667.jpg',
    'assets/imagens/LAB/UNI_7673.jpg',
    'assets/imagens/LAB/UNI_7675.jpg',
    'assets/imagens/LAB/UNI_7676.jpg',
    'assets/imagens/LAB/UNI_7689.jpg',
    'assets/imagens/LAB/UNI_7698.jpg',
    'assets/imagens/LAB/UNI_7700.jpg',
    'assets/imagens/LAB/UNI_7704.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29005a),
      appBar: AppBar(
        backgroundColor: Color(0xFF4B0082),
        title: Text(
          'Laboratórios',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Container(
              height: 300, // Defina a altura desejada para o PageView
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagens.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    imagens[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Color(0xFF29005a),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Color(0xFF29005a),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informações do Laboratório',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nome: Laboratório de Informática',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Localização: F008 - bloco F, piso inferior, próximo à loja de impressões\n'
                          'F102 - bloco F, piso superior, último corredor do bloco, à esquerda, primeira sala\n'
                          'F108 - bloco F, piso superior, último corredor do bloco, à esquerda, última sala',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nossos LABS oferecem aos alunos a oportunidade de aplicar os conceitos teóricos aprendidos em sala de aula em ambientes práticos, fornecendo experiência hands-on com tecnologias e ferramentas relevantes para a área.\n',
                      semanticsLabel:
                      'São bem equipados com hardware atualizado, software relevante e acesso a recursos de computação de alto desempenho podem enriquecer significativamente a experiência educacional dos alunos.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < imagens.length; i++) {
      list.add(_indicator(i == _currentPage));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      height: 8,
      width: isActive ? 24 : 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TelaLaboratorios(),
  ));
}
