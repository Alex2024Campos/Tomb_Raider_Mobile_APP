import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Cast.dart';
import 'Info.dart';
import 'gallery.dart';
import 'Arrays.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(214, 114, 40, 1),

        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
          centerTitle: true,
          title: const Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color.fromRGBO(82, 15, 15, 1),
              ),
              'TOMB RAIDER'),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  SystemNavigator.pop();
                }, //exit(0),
                icon: Icon(Icons.exit_to_app, color: Colors.white),
              ),
              SizedBox(
                width: 1000,
              ),
              IconButton(
                onPressed: () async {
                  AdicionarURL('https://www.crystaldynamics.com/');
                },
                icon: Icon(Icons.apartment, color: Color(0xff14ddff)),
              ),
              Text(
                style: TextStyle(color: Colors.white),
                "Crystal Dynamics",
              ),
            ],
          ),
        ),

        //bottomNavigationBar: const BottomAppBar(
        //  children: [IconButton(onPressed: Null, icon: Text(''))]),
        body: Center(
            child: Column(children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                "RESUMO"),

            // Separaçao Título do Texto - Texto
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              child: Text(
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  " No reboot Tomb Raider (2013), você joga com a jovem Lara Croft, numa expedição para encontrar uma ilha misteriosa chamada Yamatai. Após um naufrágio, Lara precisa sobreviver a perigos mortais, enfrentar cultistas, e descobrir segredos antigos para salvar seus amigos."),
            ),

            SizedBox(
              height: 145,
            ),

            SizedBox(
              width: 100,
              height: 50,
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Info()));
                  },
                  backgroundColor: Color(0xff000000),
                  child: Text(
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                      "Sobre o Jogo")),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cast()));
                    },
                    backgroundColor: Color(0xff000000),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        "Elenco")),
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gallery()));
                    },
                    backgroundColor: Color(0xff000000),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        "Galeria")),
              ),
            ],
          )
        ])),
      ),
    );
  }
}
