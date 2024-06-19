import 'package:flutter/material.dart';
import 'package:reusable_components/home_page.dart';
import 'package:reusable_components/utils/routes/routes_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){

      case RouteName.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage()
        );
      
      // ---------- Transition Routes ----------
      // case RouteName.phoneAuth:
      //   return PageRouteBuilder(
      //     pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       return SlideTransition(
      //         position: Tween<Offset>(
      //           begin: const Offset(1, 0),
      //           end: Offset.zero,
      //         ).animate(animation),
      //         child: child
      //       );
      //     },
      //   );

      default: return MaterialPageRoute(
        builder: (context){
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        }
      );
    }
  }
}