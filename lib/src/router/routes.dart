import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recetas/src/views/detalle_recetas_page.dart';
import 'package:recetas/src/views/home_page.dart';
//import 'package:redit_clone/src/views/login_page.dart';

final router = GoRouter(
  initialLocation: '/recetas',
  routes: [
    GoRoute(
      path: '/recetas',
      name: 'recetas',
      builder: (context, settings) => HomePage(),
      routes: [
        GoRoute(
          path: '/:recetasId', // /productos/4
          name: 'detalle-recetas',
          builder: (BuildContext context, GoRouterState settings) {
            final id = settings.pathParameters['recetasId'];
            final extras = settings.extra as Map;
            print(extras);

            return DetalleRecetasPage(
              id: '$id',
              extras: extras,
            );
          },
        )
      ],
    ),
    /*GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, settings) => LoginPage())*/
  ],
);
