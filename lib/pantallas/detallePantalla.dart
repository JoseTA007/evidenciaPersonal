import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class detallePantalla extends StatefulWidget {
  const detallePantalla({super.key});

  @override
  State<detallePantalla> createState() => _detallePantallaState();
}

class _detallePantallaState extends State<detallePantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Detalle slider"),
        ),
        body: content(context));
  }

  Widget content(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CarouselSlider(
                items: [
                  "assets/imagenes/Cletus.png",
                  "assets/imagenes/los_simpson.png",
                  "assets/imagenes/moe.png",
                  "assets/imagenes/Sr_burns.png",
                  "assets/imagenes/varios.png",
                ].map((i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(50)),
                    //mostrar i
                    child: Image.asset(i),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 1),
                  initialPage: 0,
                  enableInfiniteScroll: true,
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                "REGRESAR",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
