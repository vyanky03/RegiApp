import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:regiapp/loginpage.dart';

class SignupPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _text = TextEditingController();

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
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
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Reegister Here!',
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
                    validator: (value) {
                      if (value == null || !validator.email(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.words,
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
                        },
                        backgroundColor: const Color.fromARGB(255, 216, 57, 43),
                        label: const Text(
                          'Sign Up',
                          style: TextStyle(
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
