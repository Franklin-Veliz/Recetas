import 'package:flutter/material.dart';
import 'package:recetas/src/router/routes.dart';

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
