import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuraciones"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pantalla de configuración",
                style: TextStyle(fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                decoration: const BoxDecoration(
                  color: Color(0xffe3a803),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/details-settings");
                    },
                    child: const Text(
                      "Ir a detalles configuración",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
