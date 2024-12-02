import 'package:almafitness/src/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMuscular extends StatefulWidget {
  const ListMuscular({super.key});

  @override
  State<ListMuscular> createState() => _ListMuscularState();
}

class _ListMuscularState extends State<ListMuscular> {
  double screenwidth = 0;
  final titlemuscularStyles = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Text(
            "Acerca de nosotros",
            style: titlemuscularStyles,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              aboutMeBlock(
                "p1.jpg",
                "Quienes somos",
              ),
              SizedBox(
                width: screenwidth * 0.03,
              ),
              aboutMeBlock(
                "p1.jpg",
                "Ubicación",
              ),
              SizedBox(
                width: screenwidth * 0.03,
              ),
              aboutMeBlock(
                "p1.jpg",
                "Contacto",
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.yellow,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Grupos Musculares", style: titlemuscularStyles,),
           const SizedBox(
            height: 10,
          ),
          muscleBlock("Pecho", "pecho"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Espalda", "Espalda"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Abdominales", "abdominales"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Brazos", "brazos"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Hombro", "hombro"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Cuadriceps", "Cuadriceps"),
           const SizedBox(
            height: 20,
          ),
          muscleBlock("Gluteos", "gluteos"),
        ],
      ),
    );
  }

  //FUNCION DE MUSCULOS EN BLOQUE
  Widget muscleBlock(String nombre, String image) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        CupertinoPageRoute(builder: ((context) => DetailPage(nombre: nombre, image: image))),
      );
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(66, 43, 43, 43),
        borderRadius: BorderRadius.circular(18),
      ),
      height: MediaQuery.of(context).size.height * 0.07, // Responsivo
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      color: Colors.yellow.withOpacity(0.5),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  "assets/$image.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}

  //ACERCA DE MI EN BLOQUE - ROW
  Widget aboutMeBlock(String image, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: screenwidth * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
