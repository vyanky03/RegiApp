import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 120, 85, 218)),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: const Color.fromARGB(255, 120, 85, 218),
        title: const Text('RegiApp',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontFamily: 'Exo2')),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Welcome back! Login with your credentials'),
            const SizedBox(height: 30),
            const Row(
              children: [
                SizedBox(
                  height: 20,
                  child: Text(
                    'Email ID',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const TextField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Login ID',
                hintStyle: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Password',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const TextField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                hintStyle: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(255, 41, 98, 255),
                  label: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an accont?'),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
