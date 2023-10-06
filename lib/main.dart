// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:regiapp/loginpage.dart';
import 'package:regiapp/signuppage.dart';
import 'package:regiapp/welcomepage.dart';
// import 'package:regiapp/loginpage.dart';
// import 'package:regiapp/signuppage.dart';

// void main() {
//   runApp(MaterialApp.router(
//     debugShowCheckedModeBanner: false,
//     routeInformationParser: MyRouter().router.routeInformationParser,
//     routerDelegate: MyRouter().router.routerDelegate,
//   ));
// }

void main() {
  runApp(MaterialApp(onGenerateRoute: (RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
        settings: routeSettings,
        builder: (BuildContext context) {
          switch (routeSettings.name) {
            case WelcomePage.routeName:
              return WelcomePage();
            case LoginPage.routeName:
              return LoginPage();
            case SignupPage.routeName:
              return SignupPage();
            default:
              return const WelcomePage();
          }
        });
  }));
}

class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  @override
  Widget build(BuildContext context) {
    return WelcomePage();
    // return LoginPage();
    // return SignupPage();
  }
}
