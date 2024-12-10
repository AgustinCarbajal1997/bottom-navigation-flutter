import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_tab/navigation/home_stack_navigation.dart';

int generateRandomInt(int min, int max) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pantalla de inicio",
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
                      Navigator.pushNamed(context, "/details-home",
                          arguments: ScreenArgumentsDetailsHome(
                              generateRandomInt(1, 50)));
                    },
                    child: const Text(
                      "Ir a detalles inicio",
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
