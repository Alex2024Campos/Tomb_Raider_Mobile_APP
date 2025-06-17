import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'Arrays.dart';

class Info extends StatelessWidget {
  const Info({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
          centerTitle: true,
          title: const Text(
            'SOBRE O JOGO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
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
        body: Center(
        
        child: SizedBox(
          
         width: 500,
         height: 400,
         
        child: Container(
          color: const Color.fromARGB(255, 255, 149, 68),
          child:CarouselSlider( options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),


            items: info.map((item) => Container(
              margin: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                width: 300,
                child: item
              ),

          
            )).toList(),
        )
        ),
      ),
    )
    );
  }
}