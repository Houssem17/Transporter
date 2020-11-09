import 'package:flutter/material.dart';
import 'package:project_app/Screens/Login/login_screen.dart';
import 'package:project_app/Screens/Signup/components/background.dart';
import 'package:project_app/Screens/Signup/components/or_divider.dart';
import 'package:project_app/Screens/Signup/components/social_icon.dart';
import 'package:project_app/components/already_have_an_account_acheck.dart';
import 'package:project_app/components/rounded_button.dart';
import 'package:project_app/components/rounded_input_field.dart';
import 'package:project_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),*/
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Confirm Password",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon:Icons.phone,
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon:Icons.car_rental,
              hintText: "Car Number",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon:Icons.location_on,
              hintText: "Location",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
