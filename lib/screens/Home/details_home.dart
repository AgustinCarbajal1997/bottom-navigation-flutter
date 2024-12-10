import 'package:flutter/material.dart';

class DetailsHome extends StatelessWidget {
  final int pageNumber;
  const DetailsHome({super.key, required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles de inicio"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Center(
          child: Text(
            "Detalles de pantalla de inicio. Página número: $pageNumber",
            style: const TextStyle(
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
