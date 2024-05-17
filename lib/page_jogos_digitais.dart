import 'package:flutter/material.dart';

class TelaJogosDigitais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF29005a),
      appBar: AppBar(
         backgroundColor: Color(0xFF4B0082),
        title: Text('Jogos digitais - Informações',
        style: TextStyle(
         color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
    );
  }
}
