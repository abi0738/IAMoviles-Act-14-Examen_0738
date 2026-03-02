import 'package:flutter/material.dart';
import 'package:myapp/widgets/%20pantalla2.dart';
import 'package:myapp/widgets/pantalla1.dart';
import 'package:myapp/widgets/pantalla3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI_Exa1_0738',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}