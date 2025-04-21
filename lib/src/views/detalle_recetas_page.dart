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
      backgroundColor: Color.fromARGB(255, 44, 233, 189),
      appBar: AppBar(
        title: Text('Detalle de la receta ${extras?['nombre']}'),
        /*  actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],*/
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Center(child: Image.network(extras?['image'])),
              Center(
                child: Container(
                  color: Colors.white.withOpacity(0.6),
                  child: Text(
                    'Nombre del platillo: ${extras?['nombre']}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
          /*  Container(child: Row(children: [Text('    ')])),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              ' Nombre del platillo: ${extras?['nombre']}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),*/
          Container(child: Row(children: [Text('    ')])),
          Center(
            child: Row(
              children: [
                Icon(Icons.access_alarm, color: Colors.black),
                Text(
                  ' ${extras?['tiempo']}',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
          Center(
            child: Text(
              ' Ingredientes: ${extras?['ingredientes']}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
          Center(
            child: Text(
              ' PREPARACION:',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Container(
              color: Color.fromARGB(224, 250, 235, 99),
              child: Text(
                ' ${extras?['preparacion']}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ), //descripcion del producto añadida
            ),
          ),
          Container(child: Row(children: [Text('    ')])),
        ],
      ),
    );
  }
}
