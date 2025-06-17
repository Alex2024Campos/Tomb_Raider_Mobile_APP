import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// o async permite que a ação de ir para o site determinado pela url ocorra somente após a ação ser realmente feita, ou seja, o usuário não terá que esperar o outro site carregar por completo enquanto está nele já
 Future <void> AdicionarURL (String url) async {
  final Uri uri = Uri.parse(url);
  launchUrl(uri);
}


class Ator {
  final String actorname;
  final String personame;
  final String image;

  Ator(
    this.actorname,
    this.personame,
    this.image,
  );
}

List atores = [
  Ator("Lara Croft", "Camilla Luddington","Assets/atoresImagens/CamillaLuddigton.png"),
  Ator("Conrad Roth", "Robin Atkin Downes",  "Assets/atoresImagens/RobinAtkinDownes.png"),
  Ator("Mathias", "Richard Dillane" ,"Assets/atoresImagens/RichardDillane.png"),
  Ator("Sam Nishimura", "Gillian Anderson",  "Assets/atoresImagens/GillianAnderson.png"),
  Ator("Jonah Maiava", "Ralph Ineson",  "Assets/atoresImagens/RalphIneson.png"),
];



List<String> galleryphotos = [
"Assets/galeriaImagens/Concept1.jpg",
"Assets/galeriaImagens/Concept2.jpg",
"Assets/galeriaImagens/Concept3.jpg",
"Assets/galeriaImagens/GameScreenShot1.jpg",
"Assets/galeriaImagens/GameScreenShot2.jpg",
"Assets/galeriaImagens/GameScreenShot3.jpg",
"Assets/galeriaImagens/GameScreenShot4.jpg",
"Assets/galeriaImagens/GameScreenShot5.jpg",
];

List<Widget> info = [
Column(
      children: [
        
              Text(
           textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
            'DADOS DO JOGO'),

        Text(textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'ESTÚDIO'),
        Text(textAlign: TextAlign.justify,
        style: TextStyle(), ' Square Nix.'),


        Text(textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'PRODUÇÃO'),
        Text(textAlign: TextAlign.justify,style: TextStyle(), 'Crystal Dynamics.'),
        Text(textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'GÊNERO'),
        Text(style: TextStyle(), 'Ação-Aventura, Exploração e Sobrevivência'),
      ],
    ),




    Column(
      children: [
        Text(
          textAlign: TextAlign.center, style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold), 'DADOS DE LANÇAMENTO'),
        Text(
          textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'DATA DE LANÇAMENTO'),
        Text(
           textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            'Março de 2013 (PS3, Xbox 360, PC).'),
        Text(
          textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'LANÇAMENTO'),
        Text(
          textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            'Janeiro de 2014 (Definitive Edition para PS4 e Xbox One).'),
        Text(textAlign:  TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'LANÇAMENTO'),
        Text(textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            '2019 (Google Staia).'),
      ],
    ),
  




    Column(
      children: [

        Text( textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
            'MÍDIA'),
        Text(                 textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'TRAILER OFICIAL'),



            GestureDetector(
              onTap: () {
                AdicionarURL('https://www.youtube.com/watch?v=M4SG6DfVvLs');
              },
              child:         Text( textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 13, 0, 255),
            ),
            'https://www.youtube.com/watch?v=M4SG6DfVvLs'),
            ),


            
        Text(textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            'REDES SOCIAIS'),
            GestureDetector(
              onTap: (){
                AdicionarURL('https://www.tombraider.com/');
              },
              child:  Text(textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 13, 0, 255),
            ),
            'tombraider.com (Site)'),
            ),



        GestureDetector(
          onTap: (){
            AdicionarURL('https://x.com/tombraider');
          },
          child: Text(                 textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 13, 0, 255),
            ),
            '@tombraider (Twitter)'),
        ),


             GestureDetector(
          onTap: (){
            AdicionarURL('https://www.facebook.com/gaming/tombraider/');
          },
          child: Text(                 textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 13, 0, 255),
            ),
            '@tombraider (Facebook)'),




        ),     GestureDetector(
          onTap: (){
            AdicionarURL('https://www.instagram.com/tombraider/');
          },
          child: Text(                 textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 13, 0, 255),
            ),
            '@tombraider (Instagram)'),
        ),

      ],
    ),
];
