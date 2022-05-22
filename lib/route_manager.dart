import 'package:allinone/Home/HomePage.dart';
import 'package:allinone/Loading/LoadingPage.dart';
import 'package:allinone/Login/LoginPage.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case "/loading":
        return
          MaterialPageRoute(builder: (_) =>  const LoadingPage());
      case "/HomePage":
        return MaterialPageRoute(builder: (_) =>  HomePage());
      case "/LoginPage":
        return MaterialPageRoute(builder: (_) =>  const LoginPage());
      default :
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
        Scaffold(
          appBar: AppBar(title: const Text("No Route Found"),),
          body: const Center(child: Text("No Route Found"),),
        ));
  }
}