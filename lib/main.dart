import 'package:flutter/material.dart';
import 'dart:core';
import 'ui/home.dart';
import 'ui/inbox.dart';
import 'ui/news.dart';
import 'ui/profile.dart';
import 'ui/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: _generateRoute,
    );
  }
}

Route _generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => MainMenuPage());
      break;
    case '/inbox':
      return MaterialPageRoute(builder: (context) => InboxPage());
      break;
    case '/news':
      return MaterialPageRoute(builder: (context) => NewsPage());
      break;
    case '/profile':
      return MaterialPageRoute(builder: (context) => ProfilePage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Widget banner(context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (int i = 0; i < 4; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://images.saymedia-content.com/.image/t_share/MTc0Mzg2NDA5MDk4OTc4OTUw/animes-like-ansatsu-kyoushitsu.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
    ),
  );
}

Widget listComponent(context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < 30; i++)
          InkWell(
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Dialog $i'),
                  content: Text('Ini adalah dialog dengan index ke $i'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text("ini adalah perulangan dengan index ke $i")),
          ),
      ],
    ),
  );
}

TextEditingController emailController = TextEditingController();
Widget emailForm() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            "Email",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Example@email.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget button(context) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              print("email anda adalah ${emailController.text}");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xFFFFD803),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text("MASUK"),
            ),
          ),
        ),
      ],
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          banner(context),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                emailForm(),
                button(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
