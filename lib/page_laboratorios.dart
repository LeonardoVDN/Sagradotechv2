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
      appBar: AppBar(
        title: Text('Laboratórios'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color(0xFF4B0082),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 11,
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
          Expanded(
            flex: 11,
            child: Container(
              color: Color(0xFF29005a), // Cor de fundo roxa mais clara
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informações do Laboratório',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white, // Cor do texto branco
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nome: Laboratório de Informática',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Cor do texto branco
                      ),
                    ),
                    Text(
                      'Localização: Edifício X, sala Y',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Horário de Funcionamento: 8h às 18h',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
