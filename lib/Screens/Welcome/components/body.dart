import 'package:flutter/material.dart';
import 'package:project_app/Screens/Login/login_screen.dart';
import 'package:project_app/Screens/Signup/signup_screen.dart';
import 'package:project_app/Screens/Welcome/components/background.dart';
import 'package:project_app/components/rounded_button.dart';
import 'package:project_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME",
              style: TextStyle( fontSize:40 , fontWeight: FontWeight.bold),

            ),
            Text(
                "To Transporter Tunisia",
            style: TextStyle(fontSize:20),),
            SizedBox(height: size.height * 0.05),

            Image.asset(
              "assets/icons/chat2.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              color: Colors.blue,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.blueGrey,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
