import 'package:flutter/material.dart';

class imagenGaleria extends StatelessWidget {
  final String aset;

  const imagenGaleria({super.key, required this.aset});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Center(child: Image.asset(aset)),
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
          )),
    );
  }
}
