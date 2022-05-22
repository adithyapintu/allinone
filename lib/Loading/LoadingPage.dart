import 'package:allinone/Home/HomePage.dart';
import 'package:allinone/Login/LoginPage.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  void checkLogged(){
    if(true){
      Navigator.pushReplacementNamed(context, "/HomePage");
    }
    else{
      Navigator.pushReplacementNamed(context, "/LoginPage");
    }
  }


  @override
  void initState(){
    super.initState();
    checkLogged();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Loading"),
    );
  }
}
