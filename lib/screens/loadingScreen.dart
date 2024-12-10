import 'package:flutter/material.dart';
import 'package:tarea2_2/screens/signinScreen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Agregar un retraso de 3 segundos antes de redirigir a SignInScreen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), // Indicador de carga
            SizedBox(height: 20), // Espacio entre el indicador y el texto
            Text(
              'Iniciando sesión...',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
