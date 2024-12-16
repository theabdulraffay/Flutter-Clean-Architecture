import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../../Views/barrel_file_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Text('No route avalible'),
          ),
        );
    }
  }
}
