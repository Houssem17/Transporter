import 'package:flutter/material.dart';
import 'package:project_app/home.dart';
import 'package:project_app/http_service.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'file:///E:/FlutterProj/project_app/lib/models/user_model.dart';
import 'package:project_app/login.dart';
import 'package:project_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HttpService httpService = HttpService();
  var user;
  login(String email, String password) {
    Future<User> future = httpService.login(email, password);
    future
        .then((value) => {
              setState(() {
                user = value;
              }),
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home(user)))
            })
        .catchError((error) => print('error'));
  }

  signup(String email, String password, String name, String phoneNumber,
      String carNumber, String state) {
    Future<User> future = httpService.register(
        email, password, name, phoneNumber, carNumber, state);
    future
        .then((value) => {
              setState(() {
                user = value;
              }),
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home(user)))
            })
        .catchError((error) => print('error'));
  }

  @override
  Widget build(BuildContext context) {
    return Login(login, signup);
  }
}
