import 'package:flutter/material.dart';
import 'package:regiapp/loginpage.dart';
import 'package:regiapp/signuppage.dart';
import 'package:regiapp/welcomepage.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (RouteSettings routeSettings) {
      return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case WelcomePage.routeName:
                return const WelcomePage();
              case LoginPage.routeName:
                return const LoginPage();
              case SignupPage.routeName:
                return const SignupPage();
              default:
                return const WelcomePage();
            }
          });
    },
    theme: ThemeData(fontFamily: 'Exo2'),
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
    return const WelcomePage();
  }
}
