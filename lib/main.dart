// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:regiapp/welcomepage.dart';
import 'package:regiapp/loginpage.dart';
// import 'package:regiapp/signuppage.dart';

void main() {
  runApp(MaterialApp(
    home: RegForm(),
  ));
}

class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  @override
  Widget build(BuildContext context) {
    // return WelcomePage();
    return LoginPage();
    // return SignupPage();
  }
}
