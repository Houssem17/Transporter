import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  final Function signup;
  Signup(this.signup);
  @override
  _SignupState createState() => _SignupState(signup);
}

class _SignupState extends State<Signup> {
  final Function signup;
  _SignupState(this.signup);
  var _type = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController password1Controller = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 80, 0, 0),
            child: Text(
              'Signup',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 150, left: 50, right: 50),
            child: Column(
              children: <Widget>[
                MergeSemantics(
                  child: ListTile(
                      title: Text('Transporter'),
                      trailing: CupertinoSwitch(
                        value: _type,
                        onChanged: (bool value) {
                          setState(() {
                            _type = value;
                          });
                          print(_type);
                        },
                      )),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey))),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey))),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: password1Controller,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey))),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: password2Controller,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey))),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey))),
                ),
                _type == true
                    ? Column(
                        children: <Widget>[
                          SizedBox(height: 10.0),
                          TextField(
                            controller: carNumberController,
                            decoration: InputDecoration(
                                labelText: 'Car Number',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blueGrey))),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            controller: locationController,
                            decoration: InputDecoration(
                                labelText: 'Location',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blueGrey))),
                          ),
                        ],
                      )
                    : SizedBox(height: 1.0),
                SizedBox(height: 90.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blueGrey,
                    child: GestureDetector(
                      onTap: () => {
                        if (!_type)
                          {
                            signup(
                                emailController.text,
                                password1Controller.text,
                                nameController.text,
                                phoneNumberController.text,
                                "none",
                                "none"),
                          }
                        else
                          {
                            signup(
                                emailController.text,
                                password1Controller.text,
                                nameController.text,
                                phoneNumberController.text,
                                carNumberController.text,
                                locationController.text),
                            print("case2")
                          }
                      },
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
        ],
      )
    );
  }
}
