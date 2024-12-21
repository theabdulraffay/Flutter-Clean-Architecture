import 'dart:async';
import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../session_manager/session_controller.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController().getUserFromPreference().then((value) {
      if (SessionController().isLogin ?? false) {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.homeScreen, (predicate) => false),
        );
      } else {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.loginScreen, (predicate) => false),
        );
      }
    }).onError((error, stackTracce) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.loginScreen, (predicate) => false),
      );
    });
  }
}
