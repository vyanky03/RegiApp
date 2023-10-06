import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
            const SizedBox(
              width: double.infinity,
              // height: 100,
              child: Text(
                'Email ID',
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
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
                style: TextStyle(fontSize: 22),
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
                  backgroundColor: const Color.fromARGB(255, 120, 85, 218),
                  label: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an accont?'),
                Text(
                  ' Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
