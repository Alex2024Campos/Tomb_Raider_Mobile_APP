import 'package:flutter/material.dart';
import 'Arrays.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(214, 114, 40, 1),
        centerTitle: true,
        title: const Text(
          'GALERIA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
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
         width: 900,
         height: 500,
         
        child: Container(
          color: Color.fromRGBO(82, 15, 15, 1),
          child:CarouselSlider( options: CarouselOptions(
            viewportFraction: 0.6,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),


            items:galleryphotos.map((item) => Container(
              margin: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 600,
                width: 600,
                child: Image.network(item, fit: BoxFit.contain),
              ),

          
            )).toList(),
        )
        ),
      ),
    )
    );
  }
}
