import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar_route.dart';

class FlushBarHelper {
  static void showSuccessFlushBar(BuildContext context, String message) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        forwardAnimationCurve: Curves.decelerate,
        icon: Icon(Icons.check, size: 28.0, color: Colors.white),
        duration: Duration(seconds: 3),
        borderRadius: BorderRadius.circular(10),
        flushbarPosition: FlushbarPosition.TOP,
        leftBarIndicatorColor: Colors.green,
        backgroundColor: Colors.lightGreen,
        boxShadows: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      )..show(context),
    );
  }

  static void showErrorFlushBar(BuildContext context, String message) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        forwardAnimationCurve: Curves.decelerate,
        icon: Icon(
          Icons.error,
          size: 28.0,
          color: Colors.red,
        ),
        duration: Duration(seconds: 3),
        borderRadius: BorderRadius.circular(10),
        flushbarPosition: FlushbarPosition.TOP,
        leftBarIndicatorColor: Colors.red,
        backgroundColor: Colors.red,
        boxShadows: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      )..show(context),
    );
  }
}
