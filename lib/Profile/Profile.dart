import '/NavBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 80.0,
              child: ClipOval(
                child: Image.network(
                  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyDgkPQavzX7KwcLzeAsf0fgOx_-D51F3fag&usqp=CAU",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIhsbN3jFVs_7pPgNeGVJ1fqNnS4SN-5XlFw&usqp=CAU",
                  fit: BoxFit.fill,
                  height: 320.0,
                  width: 320.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
