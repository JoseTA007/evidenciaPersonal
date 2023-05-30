import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text(
          "Configuracion",
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Pantalla de configuracion",
                  style: GoogleFonts.rubikMarkerHatch(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Expanded(
                  child: Text(
                    "Bienvenidos a la pagina de configuracion, espero que el contenido sea de su agrado.",
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(child: Image.asset("assets/imagenes/Cletus.png")),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Expanded(child: Image.asset("assets/imagenes/Sr_burns.png")),
                Expanded(
                  child: Text(
                    "Bienvenidos a la pagina de configuracion, espero que el contenido sea de su agrado.",
                    style:
                        TextStyle(color: Colors.green.shade700, fontSize: 25),
                    textAlign: TextAlign.end,
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Expanded(child: Image.asset("assets/imagenes/moe.png")),
                Expanded(
                  child: Text(
                    "Bienvenidos a la pagina de configuracion, espero que el contenido sea de su agrado.",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Expanded(
                  child: Text(
                    "Bienvenidos a la pagina de configuracion, espero que el contenido sea de su agrado.",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Expanded(child: Image.asset("assets/imagenes/varios.png")),
              ]),
              Image.asset("assets/imagenes/Cletus.png"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "REGRESAR",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Colors.pink.shade300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
