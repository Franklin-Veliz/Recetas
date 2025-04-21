import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemList extends StatefulWidget {
  ItemList({super.key, required this.receta});
  int selecteIndex = 0;
  final Map<String, dynamic> receta;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  int selecteIndex = 0;

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
                image: NetworkImage(widget.receta['image']),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        (widget.receta['nombre']),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Colores(IconData icon, bool selectedIndex) {
    return Icon(Icons.favorite,
        color: selectedIndex
            ? const Color.fromARGB(255, 227, 41, 31)
            : Colors.blueGrey);
  }
}
