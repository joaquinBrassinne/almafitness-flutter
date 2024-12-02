import 'package:almafitness/src/widgets/header_widget.dart';
import 'package:almafitness/src/widgets/list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body:const Column(
        children: <Widget>[
          HeaderWidget(),
          ListMuscular(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:const Color.fromARGB(255, 255, 232, 55), // Color.fromARGB(255, 0, 0,0xFF2E2E2E),
        onPressed:(){},
        child: const Icon(Icons.fitness_center),
      ),
    );
  }
}
