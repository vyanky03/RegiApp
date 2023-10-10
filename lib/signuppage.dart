import 'package:flutter/material.dart';
import 'package:regiapp/loginpage.dart';

class SignupPage extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _text = TextEditingController();
  bool _validate = false;

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
                  height: 40,
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
                            child: textstyle(text: 'Last Name'),
                          ),
                          fieldstyle(
                              htext: 'Enter First Name',
                              etext: 'Please Enter First Name',
                              picon: const Icon(Icons.person)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: textstyle(text: 'Last Name'),
                          ),
                          fieldstyle(
                              htext: 'Enter Last Name',
                              etext: 'Please Enter Last Name',
                              picon: const Icon(Icons.person)),
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
                fieldstyle(
                    htext: 'Enter E-mail',
                    etext: 'Please Enter E-mail',
                    picon: const Icon(Icons.mail)),
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
                fieldstyle(
                    htext: 'Enter Mobile Number',
                    etext: 'Please Enter Mobile Number',
                    picon: const Icon(Icons.phone_android)),
                const SizedBox(
                  height: 10,
                ),
                textstyle(text: 'Password'),
                const SizedBox(
                  height: 10,
                ),
                fieldstyle(
                    htext: 'Enter Password',
                    etext: 'Please Enter Password',
                    picon: const Icon(Icons.password)),
                const SizedBox(
                  height: 10,
                ),
                textstyle(text: 'Confirm Password'),
                const SizedBox(
                  height: 10,
                ),
                fieldstyle(
                    htext: 'Confirm Password',
                    etext: 'Please Confirm Password',
                    picon: const Icon(Icons.password)),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton.extended(
                      heroTag: const Key("h3"),
                      onPressed: () {
                        setState(() {
                          _text.text.isEmpty
                              ? _validate = true
                              : _validate = false;
                        });
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

  Widget fieldstyle({htext, etext, picon}) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        prefixIcon: picon,
        border: const OutlineInputBorder(),
        hintText: htext,
        hintStyle: const TextStyle(fontSize: 14),
        errorText: _validate ? etext : null,
      ),
    );
  }
}
