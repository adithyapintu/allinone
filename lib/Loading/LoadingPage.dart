import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  void checkLogged(){
    if(true){
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        Navigator.popAndPushNamed(context, "/HomePage");
      });
    }
    else{
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        Navigator.popAndPushNamed(context, "/LoginPage");
      });

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
      color: Colors.green,
      child: const Center(
          child: Text("Loading")
      ),
    );
  }
}
