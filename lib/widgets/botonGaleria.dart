import 'package:flutter/material.dart';

Widget botonGaleria(BuildContext context) {
  return Container(
    child: ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, '/galeria'),
      style: ElevatedButton.styleFrom(
          //backgroundColor: Colors.tealAccent,
          padding: const EdgeInsets.symmetric(horizontal: 100),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: const Text("Galeria"),
    ),
  );
}
