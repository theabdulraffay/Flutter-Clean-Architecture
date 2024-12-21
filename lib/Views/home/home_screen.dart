import 'package:clean_architecture/services/storage/local_storage.dart';
import 'package:flutter/material.dart';

import '../../config/routes/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                LocalStorage localStorage = LocalStorage();
                localStorage.clearValue('token').then((value) {
                  localStorage.clearValue('isLogin').then((val) {
                    Navigator.pushNamed(context, RoutesName.loginScreen);
                  });
                });
              },
              child: Text('Home Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
