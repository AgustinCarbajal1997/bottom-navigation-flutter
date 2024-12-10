import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bottom_navigation_tab/navigation/home_stack_navigation.dart';
import 'package:flutter_bottom_navigation_tab/navigation/settings_stack_navigation.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    homeStackNavigatorKey,
    settingsStackNavigatorKey,
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, Object? result) async {
        if (_navigatorKeys[currentPageIndex].currentState?.canPop() == true) {
          _navigatorKeys[currentPageIndex]
              .currentState
              ?.pop(_navigatorKeys[currentPageIndex].currentContext);
          return;
        } else {
          SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
          return;
        }
      },
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          height: 60,
          animationDuration: const Duration(milliseconds: 1000),
          labelBehavior: labelBehavior,
          backgroundColor: Colors.grey[200],
          indicatorColor: Colors.white,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home_filled,
                color: Color.fromARGB(255, 167, 123, 3),
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromARGB(255, 167, 123, 3),
              ),
              label: 'Inicio',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.settings_sharp,
                color: Color.fromARGB(255, 167, 123, 3),
              ),
              icon: Icon(
                Icons.settings_outlined,
                color: Color.fromARGB(255, 167, 123, 3),
              ),
              label: 'Detalles',
            ),
          ],
        ),
        body: <Widget>[
          const HomeStackNavigator(),
          const SettingsStackNavigator()
        ][currentPageIndex],
      ),
    );
  }
}
