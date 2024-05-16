import 'package:flutter/material.dart';
import 'page_laboratorios.dart';


class TelaCienciasComputacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29005a),
      appBar: AppBar(
        backgroundColor: Color(0xFF4B0082),
        title: Text(
          'Ciências da Computação - Informações',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
                botaoNavegacao(context, 'Laboratórios', 'assets/imagens/imagem1.jpg', TelaLaboratorios()),
                SizedBox(width: 20),
                botaoNavegacao(context, 'Professores', 'assets/imagens/imagem2.jpg', TelaLaboratorios()),

              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                botaoNavegacao(context, 'Projetos de Extensão', 'assets/imagens/imagem3.jpg',TelaLaboratorios() ),
                SizedBox(width: 20),
                botaoNavegacao (context, 'Eventos', 'assets/imagens/imagem3.jpg', TelaLaboratorios()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget botaoNavegacao(BuildContext context, String texto, String caminhoImagem, Widget paginaDestino) {
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
              offset: Offset (0, 4),
            ),
          ],
        ),
        child: ElevatedButton (
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => paginaDestino),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
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
                  color: Colors.black, // Alterado para branco para melhor contraste
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
