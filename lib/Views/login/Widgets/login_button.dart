import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const LoginButton({super.key, required this.formkey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Login'),
      onPressed: () {
        if (formkey.currentState!.validate()) {}
      },
    );
  }
}
