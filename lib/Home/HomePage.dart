import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final myTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void searchItem(){
      String name = myTextController.text;
      print(name);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("All In One"),
        ),
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text("Welcome To AllInOne",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 4.0,
                color: Colors.indigo,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 4.0,),
            const Text("A place where you can find all the resources",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
            const SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: myTextController,
                cursorWidth: 1.0,
                cursorHeight: 25.0,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter the subject name',
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Center(
              child: FlatButton(
                  color: Colors.blue,
                  height: 50.0,
                  child: const Text("Search",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    searchItem();
                  }
              ),
            )
          ],
        )
    );
  }
}
