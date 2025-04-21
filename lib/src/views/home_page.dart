import 'package:flutter/material.dart';
import 'package:recetas/src/api/api.dart';
import 'package:recetas/widgets/barra_inferior.dart';
import 'package:recetas/widgets/favorito_provider.dart';
import 'package:recetas/widgets/item_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final colores = [Colors.blueGrey, Colors.deepOrange, Colors.green];
  //final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: const Text('Nombre de la App'),
        ),
        body: ListView.builder(
          itemCount: recetas.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemList(
              receta: recetas[index],
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: colores[selectedIndex],
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              //home_outlined
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  activeIcon: Icon(Icons.favorite),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  activeIcon: Icon(Icons.account_circle),
                  label: "Registro")
            ]));
  }
}
