import 'package:flutter/material.dart';
import 'package:recetas/src/api/api.dart';
import 'package:recetas/widgets/item_list.dart';

class EnsaladasPage extends StatelessWidget {
  const EnsaladasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre de la app"),
      ),
      body: ListView.builder(
        itemCount: ensaladas.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemList(
            receta: ensaladas[index],
          );
        },
      ),
    );
  }
}
