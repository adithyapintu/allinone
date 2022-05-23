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
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("All In One"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text("Flutter"),
                accountEmail: const Text('example@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyDgkPQavzX7KwcLzeAsf0fgOx_-D51F3fag&usqp=CAU",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIhsbN3jFVs_7pPgNeGVJ1fqNnS4SN-5XlFw&usqp=CAU",
                      fit: BoxFit.fill,
                      height: 90.0,
                      width: 90.0,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      // image: NetworkImage('https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
                      image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/521/942/405/5bd06052e63a0-wallpaper-preview.jpg")
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () => null,
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () => null,
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () => null,
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () => null,
              ),
            ],
          ),
        ),
        body : Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/3529668.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop)
            ),

          ),
          child: Column(
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
          ),
        )
    );
  }
}
