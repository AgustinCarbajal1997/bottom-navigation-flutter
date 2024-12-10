import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_tab/navigation/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation App',
      initialRoute: "/",
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => const BottomNavigation());
      },
    );
  }
}
