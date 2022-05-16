import 'package:allinone/Login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:allinone/Home/HomePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  void checkUserLoggedIn(){

    // If user is logged in navigate to home page
    if(){

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );

    }
    // Else navigate to Login Page
    else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  void initState(){
    super.initState();
    checkUserLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("", height: 100.0, width: 100.0),
      ),
    );
  }
}
