import 'package:flutter/material.dart';

class InternetException extends StatelessWidget {
  const InternetException({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: MediaQuery.of(context).size.height * .15, children: [
      Icon(
        Icons.cloud_off,
        color: Colors.red,
        size: 50,
      ),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          'Please check your internet connection and try again.',
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20),
        ),
      ),
    ]);
  }
}
