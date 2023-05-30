import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/imagenes.dart';
import 'package:flutter_application_1/pantallas/imagenGaleriaTama%C3%B1o.dart';

class galeriaPantalla extends StatefulWidget {
  const galeriaPantalla({super.key});

  @override
  State<galeriaPantalla> createState() => _galeriaPantallaState();
}

class _galeriaPantallaState extends State<galeriaPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Galeria",
          style: TextStyle(
              color: (Colors.yellow.shade700), fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.red.shade400,
      ),
      backgroundColor: Colors.black,
      body: GridView.extent(
        //medida de los elementos
        maxCrossAxisExtent: 150.0,
        //separacion de todo el body 4 direcciones
        padding: const EdgeInsets.all(6),
        //separacion entre columnas
        mainAxisSpacing: 4,
        //separacion entre filas
        crossAxisSpacing: 4,
        //elementos que mostraremos
        children: _listaImagenes,
      ),
    );
  }

  //lista de imagenes
  List<Widget> get _listaImagenes {
    List<Widget> _listaImagenes = [];

    for (var image in images) {
      //agregamos las imagenes
      _listaImagenes.add(
          //imagen clickeable
          GestureDetector(
        child: Image.asset(
          image,
          //hacemos que las imagenes tengan las misma medida
          fit: BoxFit.cover,
        ),
        //al clickear en la imagen se envia la direccion de la imagen(image) a aset para que lo muestre en pantalla
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => imagenGaleria(aset: image)));
        },
      ));
    }

    return _listaImagenes;
  }
}
