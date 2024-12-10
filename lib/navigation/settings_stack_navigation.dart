import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_tab/screens/Settings/Settings.dart';
import 'package:flutter_bottom_navigation_tab/screens/Settings/details_settings.dart';

class SettingsStackNavigator extends StatefulWidget {
  const SettingsStackNavigator({super.key});

  @override
  SettingsStackNavigatorState createState() => SettingsStackNavigatorState();
}

GlobalKey<NavigatorState> settingsStackNavigatorKey =
    GlobalKey<NavigatorState>();

class SettingsStackNavigatorState extends State<SettingsStackNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: settingsStackNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            if (settings.name == "/details-settings") {
              return const DetailsSettings();
            }
            return const Settings();
          },
        );
      },
    );
  }
}
