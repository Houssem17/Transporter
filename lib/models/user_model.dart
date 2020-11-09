import 'package:flutter/cupertino.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String phoneNumber;
  final String carNumber;
  final String location;

  User(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.password,
      @required this.phoneNumber,
      this.carNumber,
      this.location});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        phoneNumber: json['phoneNumber'] as String,
        carNumber: json['carNumber'] as String,
        location: json['state'] as String);
  }
}
