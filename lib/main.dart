import 'package:flutter/material.dart';

import 'package:routes/utils/routes.dart';

import 'package:routes/utils/routes_name.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: RouteName.homeScreen,
    onGenerateRoute: Routes.generateRoute,

      );
  }
}
 