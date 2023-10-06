import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
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
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(255, 41, 98, 255),
                    label: const Text('Log in')),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: FloatingActionButton.extended(
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(255, 216, 57, 43),
                    label: const Text('Sign Up')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
