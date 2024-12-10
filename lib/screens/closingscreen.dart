import 'package:tarea2_2/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

class ClosingScreen extends StatefulWidget {
  const ClosingScreen({Key? key}) : super(key: key);

  @override
  State<ClosingScreen> createState() => _ClosingScreenState();
}

class _ClosingScreenState extends State<ClosingScreen> {
  @override
  void initState() {
    super.initState();
    // Agregar un retraso de 3 segundos antes de redirigir a homepage.dart
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        //result: (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), // Indicador de carga
            SizedBox(height: 20), // Espacio entre el indicador y el texto
            Text(
              'Cerrando sesión...',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
