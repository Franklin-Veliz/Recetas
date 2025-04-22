import 'package:flutter/material.dart';
import 'package:recetas/src/views/principal_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imagePacht:
          "https://sharepostt.com/wp-content/uploads/2022/09/Comidas-Con-L-Lasagna.jpg",
      title: "Comidas"),
  ImageDetails(
      imagePacht:
          "https://buenprovecho.hn/wp-content/uploads/2024/01/sopa-de-res.jpg",
      title: "Sopas"),
  ImageDetails(
      imagePacht:
          "https://www.laespanolaaceites.com/wp-content/uploads/2019/05/ensalada-de-pasta-con-rosbif-de-atun.jpg",
      title: "Ensaladas"),
  ImageDetails(
      imagePacht:
          "https://img.freepik.com/foto-gratis/coctel-cubierto-rodaja-naranja_141793-643.jpg?semt=ais_hybrid&w=740",
      title: " Bebidas"),
  ImageDetails(
      imagePacht:
          "https://gastronomicainternacional.com/wp-content/uploads/2020/06/ideas-de-recetas-de-postres-faciles-cheesecake-fresa.jpg",
      title: "Postre"),
  ImageDetails(
      imagePacht: "https://i.blogs.es/08f5e0/aperitivos-canapes/1366_2000.jpg",
      title: "Aperitivos"),
];

class GitPage extends StatelessWidget {
  const GitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 101),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Categorias",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrincipalPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(_images[index].imagePacht),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePacht;
  final String title;
  ImageDetails({required this.imagePacht, required this.title});
}
/*Scaffold(
      appBar: AppBar(
        title: Text("Nombre de la app"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: const Color.fromARGB(255, 26, 167, 80),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: FloatingActionButton(
                  onPressed: () {
                    Colors.amber;
                  },
                  child: Text("Ensaladas")),
              color: Colors.amberAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: const Color.fromARGB(255, 243, 152, 33),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );*/
