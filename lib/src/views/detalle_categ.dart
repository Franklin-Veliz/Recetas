import 'package:flutter/material.dart';

class DetalleCateg extends StatelessWidget {
  const DetalleCateg({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(imagePath),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
