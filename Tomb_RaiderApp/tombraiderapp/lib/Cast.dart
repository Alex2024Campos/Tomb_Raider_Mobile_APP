// ignore_for_file: must_be_immutable, override_on_non_overriding_member

import 'dart:convert' show json;

import 'package:flutter/services.dart' show rootBundle;

import 'Arrays.dart';
import 'package:flutter/material.dart';

class Cast extends StatefulWidget {
  Cast({super.key});

  @override
  State<Cast> createState() => _CastState();
}

class _CastState extends State<Cast> {
  @override
  List<Ator> atores = List.empty();

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
      'Assets/atores.json',
    );
    Iterable data = await json.decode(response);
    atores = List<Ator>.from(data.map((model) => Ator.fromJson(model)));
    setState(() {
      atores;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson(); // chama quando o widget é criado
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
        centerTitle: true,
        title: const Text(
          'ELENCO TOMB RAIDER',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromRGBO(82, 15, 15, 1),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(  
        color: Colors.black,
        child: Row(
          children: [
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home, color: Color(0xffffffff)),
            ),
            Spacer(),
            IconButton(
              onPressed: () async {
                AdicionarURL('https://www.crystaldynamics.com/');
              },
              icon: Icon(Icons.apartment, color: Color(0xff14ddff)),
            ),
            Text(style: TextStyle(color: Colors.white), "Crystal Dynamics"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: atores.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: SizedBox(
              width: 300,
              height: 100,
              child: ListTile(
                tileColor: const Color.fromARGB(255, 232, 138, 66),
                minLeadingWidth: 10,
                leading: CircleAvatar(
                  //    backgroundImage: Image.network(imagens_atores[index])), -> Codigo errado por conta do Image.network invés do NetworkImage.
                  backgroundImage: AssetImage(atores[index].image),
                ),
                title: Text(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  atores[index].nome,
                ),
                subtitle: Text(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  atores[index].personagem,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
