import 'package:flutter/material.dart';

class Pantalla3 extends StatefulWidget {
  const Pantalla3({super.key});

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {

  String metodo = "Transferencia";

  @override
  Widget build(BuildContext context) {

    const Color rosaFuerte = Color(0xFFD63384);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: rosaFuerte,
        title: const Text("Método de Pago"),
      ),
      body: Column(
        children: [

          metodoPago("Transferencia"),
          metodoPago("PayPal"),
          metodoPago("Débito"),
          metodoPago("Crédito"),
          metodoPago("Apple Pay"),
          metodoPago("GPay"),
          metodoPago("Efectivo"),

          const Spacer(),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: rosaFuerte,
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {},
            child: const Text("Confirmar"),
          ),
        ],
      ),
    );
  }

  Widget metodoPago(String nombre) {
    return RadioListTile(
      value: nombre,
      groupValue: metodo,
      onChanged: (value) {
        setState(() => metodo = value!);
      },
      title: Text(nombre),
    );
  }
}