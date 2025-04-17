import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre de la App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text("homepage"),
      ),
    );
  }
}
