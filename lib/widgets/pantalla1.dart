import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {

    const Color rosaClaro = Color(0xFFF8D7E3);
    const Color rosaMedio = Color(0xFFE98DB2);
    const Color rosaFuerte = Color(0xFFD63384);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: rosaFuerte,
        elevation: 0,
        title: const Text(
          "Dance Ashley",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.favorite),
          SizedBox(width: 15),
          Icon(Icons.menu),
          SizedBox(width: 15),
        ],
      ),

      backgroundColor: rosaClaro,

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "¿Qué clase quieres bailar hoy?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            /// Barra búsqueda
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Buscar clase...",
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 18),

            /// Banner promoción
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: rosaMedio,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Obtén 10% de descuento los viernes 💃",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Clases Populares",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            /// GRID PROFESIONAL
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 0.75,
              children: [

                _cardClase(
                  context,
                  "Ballet",
                  "\$750",
                  "https://raw.githubusercontent.com/abi0738/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/baile.jpg",
                ),

                _cardClase(
                  context,
                  "Hip Hop",
                  "\$750",
                  "https://raw.githubusercontent.com/abi0738/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/hiphop.jpg",
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Tu última clase",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: const Text(
                "Danza Contemporánea – \$750",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardClase(
    BuildContext context,
    String nombre,
    String precio,
    String imagenUrl,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/pantalla2');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Column(
          children: [

            /// Imagen superior sin recorte
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Container(
                height: 150,
                padding: const EdgeInsets.all(10),
                color: Colors.grey[100],
                child: Image.network(
                  imagenUrl,
                  fit: BoxFit.contain, // 👈 YA NO SE CORTA
                ),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              nombre,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              precio,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}