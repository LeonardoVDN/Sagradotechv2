import 'package:flutter/material.dart';



class TelaCienciasComputacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );

  }
}
