import 'package:clean_architecture/config/Components/round_button.dart';
import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundButton(
                title: 'Home Screen',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
