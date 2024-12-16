import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.splashScreen);
          },
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
