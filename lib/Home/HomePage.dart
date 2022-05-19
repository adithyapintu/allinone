import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All In One"),
      ),
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Text("Welcome To AllInOne",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 4.0,
              color: Colors.indigo,
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 4.0,),
          Text("A place where you can find all the resources",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              obscureText: true,
              cursorWidth: 1.0,
              cursorHeight: 25.0,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the subject name',
              ),
            ),
          )
        ],
      )
    );
  }
}

