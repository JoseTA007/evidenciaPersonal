import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget lottie_(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Lottie.network(
        //'https://assets8.lottiefiles.com/packages/lf20_mv7XEWVcaw.json',
        'https://assets2.lottiefiles.com/packages/lf20_IJpMIV0zMj.json',
      ),
    ),
  );
}
