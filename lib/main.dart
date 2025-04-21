import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recetas/src/router/routes.dart';
import 'package:recetas/src/views/home_page.dart';
import 'package:recetas/widgets/barra_inferior.dart';
import 'package:recetas/widgets/favorito_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Recetas",
      //home: HomePage(),
      routerConfig: router,
    );
  }
}

//Home page

/*selectedItemColor: colores[selectedIndex],
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
            ]*/
