import 'package:flutter/material.dart';
import 'package:recetas/src/router/routes.dart';
import 'package:recetas/src/views/git_page.dart';
import 'package:recetas/src/views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recetas",
      home: HomePage(),
      //routerConfig: router,
    );
  }
}
