import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBlock(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Ny misy anao.."),
        content: const TextField(
          decoration: InputDecoration(hintText: "Hitady adiressy"),
        ),
        actions: [
          //cancel buttons
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Ajanona"),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tediavo"),
          ),

          //save buttons
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aterina zao",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBlock(context),
            child: Row(
              children: [
                //adress
                Text(
                  "IVK 50C Antanjombe Ambohimanarina",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),

                //dropDown menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
