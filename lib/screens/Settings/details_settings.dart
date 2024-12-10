import 'package:flutter/material.dart';

class DetailsSettings extends StatelessWidget {
  const DetailsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles configuración"),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            "Detalles de pantalla de configuración",
            style: TextStyle(fontSize: 26),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
