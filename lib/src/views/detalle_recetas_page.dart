import 'package:flutter/material.dart';

class DetalleRecetasPage extends StatelessWidget {
  const DetalleRecetasPage({
    super.key,
    required this.id,
    this.extras,
  });
  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del recetas $id'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            /*  Center(
              child: Image.network(
                extras?["image"],
                height: 150,
                fit: BoxFit.fill,
              ),
            ),*/
            Text('Detalle de la receta ${extras?['nombre']}'),
          ],
        ),
      ),
    );
  }
}
