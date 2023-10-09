import 'package:flutter/material.dart';
import 'package:regiapp/loginpage.dart';
import 'package:regiapp/signuppage.dart';

class WelcomePage extends StatefulWidget {
  static const String routeName = '/';
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello There!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Let us get you started.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/loginpageimage.jpg',
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: FloatingActionButton.extended(
                    heroTag: const Key("h2"),
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                    backgroundColor: const Color.fromARGB(255, 41, 98, 255),
                    label: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: FloatingActionButton.extended(
                    heroTag: const Key("h1"),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignupPage.routeName);
                    },
                    backgroundColor: const Color.fromARGB(255, 216, 57, 43),
                    label: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
