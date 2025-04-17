import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas/src/favoritos.dart';
import 'package:recetas/src/home_page.dart';
import 'package:recetas/src/login.dart';

class BarraInferior extends StatefulWidget {
  const BarraInferior({super.key});

  @override
  State<BarraInferior> createState() => _BarraInferiosState();
}

class _BarraInferiosState extends State<BarraInferior> {
  int selectedIndex = 0;
  final screens = [HomePage(), Favorito(), LoginPage()];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final colores = [Colors.blueGrey, Colors.deepOrange, Colors.green];
  final botones = <Widget>[
    Icon(
      Icons.home_outlined,
      size: 30,
      color: Colors.blueGrey,
    ),
    Icon(
      Icons.favorite_border,
      size: 30,
      color: Colors.red,
    ),
    Icon(
      Icons.account_circle_outlined,
      size: 30,
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.tealAccent,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        //margin: const EdgeInsets.only(bottom: 10),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: const Color.fromARGB(255, 246, 244, 103),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: selectedIndex,
          items: botones,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
