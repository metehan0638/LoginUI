import 'package:flutter/material.dart';
import 'package:test_pro/consts/consts.dart';
import 'package:test_pro/pages/third_page.dart';
import 'package:test_pro/widgets/back_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                  alignment: Alignment.topLeft, child: BackPageWidget()),
              const SizedBox(
                height: 125,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Your Name?', style: Sabitler.yourNameTextStyle),
              ),
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 17, right: 17, top: 8, bottom: 8),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (deger) {
                    if (deger!.length < 3) {
                      return 'At Least three char';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text('Your Name')),
                ),
              ),
              const SizedBox(
                height: 230,
              ),
              buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(context) {
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
          Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => const ThirdPage())));
        },
      ),
    );
  }
}
