import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallas/configuracionPantalla.dart';
import 'package:flutter_application_1/pantallas/detallePantalla.dart';
import 'package:flutter_application_1/pantallas/galeriaPantalla.dart';
import 'package:flutter_application_1/widgets/botonGaleria.dart';
import 'package:flutter_application_1/widgets/lottie.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/detalle': (context) => detallePantalla(),
        '/configuracion': (context) => Configuracion(),
        '/galeria': (context) => galeriaPantalla(),
      },
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Color _textColor = Colors.black;
  Icon _iconModeLight = Icon(Icons.light_mode);
  Icon _iconModeDark = Icon(Icons.dark_mode);
  Color _backgroundColor = Colors.black;
  Color _text = Colors.teal.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Center(child: Text("SOLUCIONES MOVILES")),
        //colocar iconos
        actions: <Widget>[
          IconButton(
            icon: _iconModeLight,
            onPressed: () => _pintarBlanco(),
          ),
          IconButton(
            icon: _iconModeDark,
            onPressed: () => _pintarNegro(),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            //colocar imagen
            Image.asset(
              "assets/imagenes/logo_certus.png",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            //colocar texto
            Text(
              "Hola CERTUS, Martes 02 de Mayo del 2023",
              style: TextStyle(
                  fontSize: 24, color: _text, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            //alinear 2 botones en el centro
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/detalle'),
                  child: Text(
                    'Ver detalles',
                    style: TextStyle(color: _textColor),
                  ),
                  //cambiar estilos al boton
                  style: ElevatedButton.styleFrom(
                      //color de boton
                      backgroundColor: Colors.pink,
                      //borde redondeado
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50))),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/configuracion'),
                  child: Text(
                    'Configuration',
                    style: TextStyle(color: _textColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            botonGaleria(context),
            SizedBox(height: 5),
            Container(
              child: lottie_(context),
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }

  void _pintarNegro() {
    setState(() {
      _backgroundColor = Colors.black;
      _textColor = Colors.white;
      _text = Colors.teal.shade100;
    });
  }

  void _pintarBlanco() {
    setState(() {
      _backgroundColor = Colors.white;
      _textColor = Colors.black;
      _text = Colors.purpleAccent.shade700;
    });
  }
}
