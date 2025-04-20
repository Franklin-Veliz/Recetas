import 'package:flutter/material.dart';
import 'package:recetas/src/api/api.dart';
import 'package:recetas/widgets/barra_inferior.dart';
import 'package:recetas/widgets/item_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Nombre de la App'),
      ),
      body: ListView.builder(
        itemCount: recetas.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemList(receta: recetas[index]);
        },
      ),
    );
  }
}
