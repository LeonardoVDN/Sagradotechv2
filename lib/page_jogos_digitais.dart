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
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    botaoNavegacao(context, 'Laboratórios', 'assets/imagens/imagem1jpg'),
    SizedBox(width: 20),
    botaoNavegacao(context, 'Professores', 'assets/imagens/imagem1.jpg'),
    ],
    ),
    SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    botaoNavegacao(context, 'Projetos de Extensão', 'assets/imagens/imagem1.jpg'),
    SizedBox(width: 20),
    botaoNavegacao(context, 'Eventos', 'assets/imagens/imagem1.jpg'),
    ],
    ),
    ],
    ),
    ),
    );
  }
  Widget botaoNavegacao(BuildContext context, String texto, String caminhoImagem) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                caminhoImagem,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
}
