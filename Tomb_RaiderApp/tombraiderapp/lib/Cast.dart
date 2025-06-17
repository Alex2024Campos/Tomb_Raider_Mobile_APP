import 'Arrays.dart';
import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  const Cast({super.key});
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
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home, color: Color(0xffffffff)),
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
      body: ListView.builder(
          itemCount: atores.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: SizedBox( width: 300, height: 100, child:  ListTile(
              tileColor: const Color.fromARGB(255, 232, 138, 66),
              minLeadingWidth: 10,
              leading: CircleAvatar(
                  //    backgroundImage: Image.network(imagens_atores[index])), -> Codigo errado por conta do Image.network invés do NetworkImage.
                  backgroundImage: AssetImage(atores[index].image)),
              title: Text(
                  style: TextStyle( 
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  atores[index].actorname),
              subtitle: Text(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  atores[index].personame),
            )));
          }),
    );
  }
}
