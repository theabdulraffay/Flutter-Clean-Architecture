import 'package:clean_architecture/config/routes/routes.dart';
import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:clean_architecture/repository/auth/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  // servicesLocatior();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }

  void servicesLocatior() {
    // getIt.resetLazySingleton<LoginRepository>(()=> LoginRepository())
  }
}
