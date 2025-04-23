import 'package:flutter/material.dart';
import 'package:recetas/src/views/aperitivos_page.dart';
import 'package:recetas/src/views/bebidas_page.dart';
import 'package:recetas/src/views/ensaladas_page.dart';
import 'package:recetas/src/views/comidas_page.dart';
import 'package:recetas/src/views/mariscos_page.dart';
import 'package:recetas/src/views/postres_page.dart';

class GitPage extends StatelessWidget {
  GitPage({super.key});
  String imagenes =
      "https://sharepostt.com/wp-content/uploads/2022/09/Comidas-Con-L-Lasagna.jpg";
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
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComidasPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://sharepostt.com/wp-content/uploads/2022/09/Comidas-Con-L-Lasagna.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MariscosPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://centrosantafe.com.mx/cdn/shop/articles/restaurantes-de-mariscos-y-otras-opciones-para-comer-en-cuaresma.jpg?v=1552671997"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnsaladasPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://www.laespanolaaceites.com/wp-content/uploads/2019/05/ensalada-de-pasta-con-rosbif-de-atun.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BebidasPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/foto-gratis/coctel-cubierto-rodaja-naranja_141793-643.jpg?semt=ais_hybrid&w=740"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostresPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://gastronomicainternacional.com/wp-content/uploads/2020/06/ideas-de-recetas-de-postres-faciles-cheesecake-fresa.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AperitivosPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.blogs.es/08f5e0/aperitivos-canapes/1366_2000.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
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
/*itemBuilder: (context, index) {
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
                  itemCount: _images.length, */
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
