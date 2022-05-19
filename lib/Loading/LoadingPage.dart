import 'package:allinone/Home/HomePage.dart';
import 'package:allinone/Login/LoginPage.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late Widget isLogged;

  void checkLogged(){
    bool logged = true;
    if(logged){
      isLogged = const HomePage();
    }
    else{
      isLogged = const LoginPage();
    }
  }

  @override
  void initState(){
    super.initState();
    checkLogged();
  }

  @override
  Widget build(BuildContext context) {
    return isLogged;
  }
}
