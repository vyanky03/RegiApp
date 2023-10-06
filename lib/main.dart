// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Color.fromARGB(255, 120, 85, 218),
        title: Text('RegiApp',
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
          children: [
            Text(
              'Join us Here!',
              style: TextStyle(fontSize: 38),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SizedBox(
                          width: 178,
                          child: Text(
                            'First Name',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 181,
                      child: TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter First Name',
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: 178,
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 181,
                      child: TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Last Name',
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'E-mail',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter E-mail',
                hintStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Mobile Number',
                hintStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: Color.fromARGB(255, 120, 85, 218),
                  label: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Already have an accont? Log in',
              style: TextStyle(
                fontSize: 16,
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.black,
                  ),
                )),
                Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'images/google.png',
                height: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'images/fb.png',
                height: 50,
              ),
              SizedBox(
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
