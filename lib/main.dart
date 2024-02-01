import 'package:flutter/material.dart';
import 'package:navigation_2_demo/routing/router.dart';
import 'package:navigation_2_demo/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: Routes.homeRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const HomeScreenClass(),
    );
  }
}
