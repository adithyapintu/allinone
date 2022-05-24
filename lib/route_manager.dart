import 'Home/HomePage.dart';
import 'Loading/LoadingPage.dart';
import 'Login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'Profile/Profile.dart';

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case "/loading":
        return MaterialPageRoute(builder: (_) =>  const LoadingPage());
      case "/HomePage":
        return MaterialPageRoute(builder: (_) =>  const HomePage());
      case "/LoginPage":
        return MaterialPageRoute(builder: (_) =>  const LoginPage());
      case "/Profile":
        return MaterialPageRoute(builder: (_) =>  const Profile());
      default :
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}