import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_tab/screens/Home/details_home.dart';
import 'package:flutter_bottom_navigation_tab/screens/Home/home.dart';

class ScreenArgumentsDetailsHome {
  final int pageNumber;

  ScreenArgumentsDetailsHome(this.pageNumber);
}

class HomeStackNavigator extends StatefulWidget {
  const HomeStackNavigator({super.key});

  @override
  HomeStackNavigatorState createState() => HomeStackNavigatorState();
}

GlobalKey<NavigatorState> homeStackNavigatorKey = GlobalKey<NavigatorState>();

class HomeStackNavigatorState extends State<HomeStackNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: homeStackNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            if (settings.name == "/details-home") {
              final args = settings.arguments as ScreenArgumentsDetailsHome;

              return DetailsHome(pageNumber: args.pageNumber);
            }
            return const Home();
          },
        );
      },
    );
  }
}
