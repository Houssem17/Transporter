import 'package:flutter/material.dart';
import 'package:project_app/Screens/Login/components/background.dart';
import 'package:project_app/Screens/Signup/signup_screen.dart';
import 'package:project_app/Screens/Welcome/welcome_screen.dart';
import 'package:project_app/Screens/product/products_screen.dart';
import 'package:project_app/components/already_have_an_account_acheck.dart';
import 'package:project_app/components/rounded_button.dart';
import 'package:project_app/components/rounded_input_field.dart';
import 'package:project_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_app/Screens/pages/menu.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset(
              "assets/icons/chat.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              color: Colors.blue,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
