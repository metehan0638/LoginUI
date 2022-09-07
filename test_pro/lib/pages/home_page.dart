import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_pro/consts/consts.dart';
import 'package:test_pro/pages/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String sifre = '';

  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Sabitler.backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 75,
                ),
                _buildSwitchButtons(),
                buildIndexStack(),
                buildButton(),
              ],
            ),
          )),
    );
  }

  _buildSwitchButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: CupertinoPageScaffold(
        backgroundColor: Colors.grey.shade100,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: CupertinoSlidingSegmentedControl(
            backgroundColor: Colors.blueGrey.shade100,
            groupValue: groupValue,
            children: {
              0: buildText('Sign up'),
              1: buildText('Sign in'),
            },
            onValueChanged: (groupValue) {
              setState(() {
                this.groupValue = groupValue!;
              });
            },
          ),
        ),
      ),
    );
  }

  buildText(String buttonName) {
    return Container(
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 46, right: 46),
      child: Text(
        buttonName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }

  buildIndexStack() {
    return IndexedStack(
      index: groupValue,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 17, right: 17, top: 8, bottom: 8),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      return 'Incorrect Email Value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Email')),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (password) {
                    sifre = password!;
                    if (sifre.length < 6) {
                      return 'At least six char';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Create Password')),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (repass) {
                    if (repass != sifre) {
                      return 'Incorrect Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Re-write Password')),
                ),
                const SizedBox(
                  height: 50,
                ),
                privacyPolicyLinkAndTermsOfService(),
                const SizedBox(
                  height: 75,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 17, right: 17, top: 8, bottom: 8),
          child: Form(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      return 'Incorrect Email Value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Email')),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextFormField(
                  validator: (password) {
                    sifre = password!;
                    if (sifre.length < 6) {
                      return 'At least six char';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Create Password')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget privacyPolicyLinkAndTermsOfService() {
    return Padding(
      padding: const EdgeInsets.only(right: 28.0, left: 28, bottom: 15),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Text.rich(TextSpan(
                text: 'By continuing, you agree to our ',
                style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
                children: <TextSpan>[
              TextSpan(
                  text: 'Terms of Service',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // code to open / launch terms of service link here
                    }),
              TextSpan(
                  text: ' and ',
                  style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // code to open / launch privacy policy link here
                          })
                  ])
            ]))),
      ),
    );
  }

  Widget buildButton() {
    return Center(
      child: ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 125.0, vertical: 16),
          child: Text(
            'Continue',
            style: TextStyle(fontSize: 18),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => const SecondPage()),
          ));
        },
      ),
    );
  }
}
