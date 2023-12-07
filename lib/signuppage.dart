import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:regiapp/loginpage.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> insertrecord() async {
    if (fullname.text != '' ||
        email.text != '' ||
        number.text != '' ||
        password.text != '') {
      try {
        String uri = "http://192.168.168.4:8080/regiapp_api/insertdata.php";
        var res = await http.post(Uri.parse(uri), body: {
          "fullname": fullname.text,
          "email": email.text,
          "number": number.text,
          "password": password.text,
        });

        var response = jsonDecode(res.body);
        if (response["success"] == "true") {
          // print("Record Inserted");
          fullname.text = "";
          email.text = "";
          number.text = "";
          password.text = "";
        } else {}
      } catch (e) {
        // print(e);
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 85, 218),
        title: const Text('RegiApp',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Register Here!',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Create an account here!'),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: textstyle(text: 'Full Name'),
                            ),
                            TextFormField(
                              controller: fullname,
                              validator: (value) {
                                if (value == null || !validator.name(value)) {
                                  return 'Please enter a valid name';
                                }
                                return null;
                              },
                              textCapitalization: TextCapitalization.words,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(),
                                hintText: 'Enter Full Name',
                                hintStyle: TextStyle(fontSize: 14),
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: textstyle(text: 'E-mail'),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value == null || !validator.email(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: 'Enter E-mail',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: textstyle(text: 'Mobile Number'),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: number,
                    validator: (value) {
                      if (value == null || !validator.phone(value)) {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                      hintText: 'Enter Mobile Number',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textstyle(text: 'Password'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value == null || !validator.password(value)) {
                        return 'Please enter a valid password';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(fontSize: 14),
                      helperText:
                          'Password should be 8 char long and must have one special character',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textstyle(text: 'Confirm Password'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FloatingActionButton.extended(
                        heroTag: const Key("h3"),
                        onPressed: () {
                          final form = _formKey.currentState!;
                          if (form.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data...')));
                          }
                          insertrecord();
                        },
                        backgroundColor: const Color.fromARGB(255, 216, 57, 43),
                        label: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: const Divider(
                          height: 10,
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
                          height: 10,
                          thickness: 1,
                          color: Colors.black,
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        height: 50,
                        onPressed: () {},
                        color: const Color.fromARGB(255, 24, 119, 242),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/fb_new.webp'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Sign In with Facebook",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        height: 50,
                        onPressed: () {},
                        color: const Color.fromARGB(255, 29, 161, 242),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/twitter_new.png'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Sign In with Twitter",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                        height: 50,
                        color: const Color.fromARGB(255, 170, 36, 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/google_new.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Sign In with Google",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textstyle({text}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
