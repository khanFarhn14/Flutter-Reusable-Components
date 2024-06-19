import 'package:flutter/material.dart';
import 'package:reusable_components/utils/routes/routes.dart';
import 'package:reusable_components/utils/routes/routes_name.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reusable Components',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9)
      ),
      initialRoute: RouteName.homePage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}