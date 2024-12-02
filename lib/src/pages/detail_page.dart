import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nombre;
  final String image;

  const DetailPage({super.key, required this.nombre, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 249, 228, 40),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50), // Margen superior para evitar el notch
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                nombre,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Aquí puedes agregar una descripción del grupo muscular, "
                      "beneficios de trabajar este músculo y más información "
                      "relevante para el usuario.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120, // Ancho máximo de la imagen
                  height: 120, // Alto máximo de la imagen
                  child: Image.asset(
                    "assets/$image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para reproducir el video
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  foregroundColor: Colors.black,
                ),
                child: const Text("Ver rutina de ejercicios"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
