import 'package:flutter/material.dart';
import 'page_ciencia_computação.dart'; // Certifique-se de que este é o caminho correto para o seu arquivo da tela secundária
import 'page_jogos_digitais.dart';
import 'page_laboratorios.dart';
import 'page_creditos.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'assets/imagens/topo.jpg',
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 70),
            botaoNavegacaoCC(context, 'Ciência da Computação', 'assets/imagens/imagem1.jpg'),
            SizedBox(height: 20),
            botaoNavegacaoJD(context, 'Jogos Digitais', 'assets/imagens/imagem2.jpg'),
            SizedBox(height: 20),
            botaoNavegacaoL(context, 'Laboratórios', 'assets/imagens/imagem2.jpg'),
            SizedBox(height: 20),
            botaoNavegacaoC(context, 'Créditos', 'assets/imagens/imagem3.jpg'),
            Spacer(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  'UNISAGRADO',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget botaoNavegacaoCC(BuildContext context, String texto, String caminhoImagem) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            // Verifique o nome da classe para sua tela secundária no arquivo page_ciencia_computação.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaCienciasComputacao()),
            );
          },
          child: Row(
            children: [
              SizedBox(width: 40),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    caminhoImagem,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 40),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }

  Widget botaoNavegacaoJD(BuildContext context, String texto, String caminhoImagem) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            // Verifique o nome da classe para sua tela secundária no arquivo page_ciencia_computação.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaJogosDigitais()),
            );
          },
          child: Row(
            children: [
              SizedBox(width: 40),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    caminhoImagem,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 40),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }

  Widget botaoNavegacaoC(BuildContext context, String texto, String caminhoImagem) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            // Verifique o nome da classe para sua tela secundária no arquivo page_ciencia_computação.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaCreditos()),
            );
          },
          child: Row(
            children: [
              SizedBox(width: 40),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    caminhoImagem,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 40),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
Widget botaoNavegacaoL(BuildContext context, String texto, String caminhoImagem) {
  return SizedBox(
    width: 400,
    height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
          // Verifique o nome da classe para sua tela secundária no arquivo page_ciencia_computação.dart
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaLaboratorios()),
          );
        },
        child: Row(
          children: [
            SizedBox(width: 40),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  caminhoImagem,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 40),
            Text(
              texto,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
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