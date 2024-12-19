import 'dart:async';
import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.loginScreen, (predicate) => false),
    );
  }
}
