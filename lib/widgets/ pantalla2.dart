import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {

    const Color rosaMedio = Color(0xFFE98DB2);
    const Color rosaFuerte = Color(0xFFD63384);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: rosaFuerte,
        title: const Text("Detalle Clase"),
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(width: 15),
          Icon(Icons.favorite),
          SizedBox(width: 15),
        ],
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 40),

            // 🔥 IMAGEN EN VEZ DEL ICONO
            Image.network(
              "https://raw.githubusercontent.com/abi0738/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/ballet%20clasico.jpg",
              height: 120,
            ),

            const SizedBox(height: 20),

            const Text(
              "Ballet Clásico",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // 🔥 TEXTO MORADITO
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: rosaMedio,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Incluye coreografía + práctica escénica",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const Spacer(),

            // 🔥 BOTÓN CON TEXTO NEGRO
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: rosaFuerte,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text(
                "Inscribirme – \$750",
                style: TextStyle(
                  color: Colors.black, // 👈 CAMBIADO A NEGRO
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}