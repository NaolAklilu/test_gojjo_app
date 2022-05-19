import 'package:flutter/cupertino.dart';

class User {
  final String fullName;
  final String email;
  final String password;

  User({
    required this.fullName,
    required this.email,
    required this.password,
  });
}

List<User> users = [
  User(fullName: "Naol", email: "naol@gmail.com", password: "1234"),
  User(fullName: "abebe", email: "baeb@gmail.com", password: "4534"),
  User(fullName: "getu", email: "getu@gmail.com", password: "1234"),
  User(fullName: "addisu", email: "addisu@gmail.com", password: "1234"),
  User(fullName: "mule", email: "mule@gmail.com", password: "1234"),
  User(fullName: "bini", email: "bini@gmail.com", password: "1234"),
];
