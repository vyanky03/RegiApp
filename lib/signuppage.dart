import 'package:flutter/material.dart';
import 'package:regiapp/loginpage.dart';

class SignupPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Create an account here!'),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'First Name',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter First Name',
                          hintStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Last Name',
                          hintStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'E-mail',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter E-mail',
                hintStyle: TextStyle(fontSize: 14),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Mobile Number',
                hintStyle: TextStyle(fontSize: 14),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                hintStyle: TextStyle(fontSize: 14),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Confirm password',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(fontSize: 14),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton.extended(
                  heroTag: const Key("h3"),
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(255, 216, 57, 43),
                  label: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginPage.routeName);
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'here',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: const Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.black,
                  ),
                )),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: const Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'images/fb.png',
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'images/google.png',
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'images/twitter.png',
                height: 50,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
