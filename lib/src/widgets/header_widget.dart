import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  final titleText = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 26.0);
  final subTitle = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 17.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 254, 254, 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Almafitness",
                style: titleText,
              ),
              Text(
                "Gym",
                style: subTitle,
              )
            ],
          ),
          Row(
            children: [

              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black.withOpacity(.1),
                ),

                child: IconButton(
                  icon:const Icon(Icons.search, size: 28,color: Color.fromARGB(255, 0, 0, 0),),
                  onPressed: (){}
                  ),

              ),

              const SizedBox(
                width: 10,
              ),

              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black.withOpacity(.1),
                ),

                child: IconButton(
                  icon:const Icon(Icons.home, size: 28,color: Color.fromARGB(255, 0, 0, 0),),
                  onPressed: (){}
                  ),

              )
              
            ],
          )
        ],
      ),
    );
  }
}
