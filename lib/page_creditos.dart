import 'package:flutter/material.dart';

class TelaCreditos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29005a),
      appBar: AppBar(
        backgroundColor: Color(0xFF4B0082),
        title: Text(
          'Créditos',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
       ),
      body: ListView(
        children: [
          TextSection(
              text1: "Aplicativo desenvolvido para a disciplina de Desenvolvimento de Software do curso de graduação de Ciência da Computação Professor Dr. Elvio Gilberto da Silva. \n\nDesenvolvido pelos alunos: Anna Beatriz Camargo Godoi, Leonardo Valentim do Nascimento, Natasha Cristine Barbosa Teixeira, Priscilla Dias Rios e Udymilla Gonçalves Chagas.",
              image1Path: 'assets/imagens/LogoCComp.jpg',
              text2: "Apoio",
              image2Path: 'assets/imagens/LogoCExten.jpg',
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.text1,
    required this.image1Path,
    required this.text2,
    required this.image2Path,
  }): super(key: key);

  final String text1;
  final String image1Path;
  final String text2;
  final String image2Path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(12),
            border: Border.all(
            color: Colors.white,
            width:1
        ),
      ),
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
              softWrap: true,
            ),
            SizedBox(height: 16.0),
            Image.asset(
              image1Path,
              width: 500,
              height: 100,
            ),
            SizedBox(height: 16.0),
            Text(
              text2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
              softWrap: true,
            ),
            SizedBox(height: 16.0),
            Image.asset(
              image2Path,
              width: 500,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context){
  return Scaffold(
      backgroundColor: Color(0xFF29005a),
      appBar: AppBar(
        backgroundColor: Color(0xFF4B0082),
        title: Text(
          'SAGRADOTECH',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
           ),
         ),
  ),
  );
}

