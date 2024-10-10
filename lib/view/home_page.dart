import 'package:flutter/material.dart';
import 'package:flutter_invertexto_1/view/busca_cep_page.dart';
import 'package:flutter_invertexto_1/view/converte_moedas_page.dart';
import 'package:flutter_invertexto_1/view/por_extenso_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgs/invertexto.png',
              fit: BoxFit.contain,
              height: 40,
            ),
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          GestureDetector(
            child: Row(
              children: <Widget>[
                Icon(Icons.edit, color: Colors.white, size: 70.0),
                const Text(
                  "Por Extenso",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => PorExtenso())));
            },
          ),
          GestureDetector(
            child: Row(
              children: <Widget>[
                const Icon(Icons.home, color: Colors.white, size: 70.0),
                Text(
                  "Busca CEP",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => BuscaCepPage())));
            },
          ),
          GestureDetector(
            child: Row(
              children: <Widget>[
                const Icon(Icons.money, color: Colors.white, size: 70.0),
                Text(
                  "Converte Moedas",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ConverteMoedasPage())));
            },
          ),
        ]),
      ),
    );
  }
}
