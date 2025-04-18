import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.receta});

  final Map<String, dynamic> receta;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 9, 220, 157),
      child: InkWell(
        onTap: () {
          //navegacion a la pantalla de detalle
          // Navigator
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 250,
                fit: BoxFit.fill,
                image: NetworkImage(receta['image']),
              ),
              Text(
                (receta['nombre']),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
