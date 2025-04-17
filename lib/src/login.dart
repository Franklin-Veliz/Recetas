import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: userController,
                    validator: (String? valor) {
                      if (valor!.isEmpty) {
                        return "El usuario es obligatorio";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (String? valor) {
                      if (valor!.isEmpty) {
                        return "La contraseña es obligatoria";
                      }
                      if (valor.length < 8) {
                        return "La contraseña debe tener minimo 8 caracteres";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Pasword",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
