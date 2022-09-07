import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_pro/consts/consts.dart';
import 'package:test_pro/widgets/age_picker.dart';
import 'package:test_pro/widgets/back_page.dart';
import 'package:test_pro/widgets/height_picker.dart';
import 'package:test_pro/widgets/next_button.dart';
import 'package:test_pro/widgets/weight_picker.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final _controller = PageController();
  late Color myColorBoy = Colors.grey.withOpacity(0.3);
  late Color myColorGirl = Colors.grey.withOpacity(0.3);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackPageWidget(),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'What is your gender?',
                          style: Sabitler.genderTextStyle,
                        ),
                        const SizedBox(
                          height: 140,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    myColorGirl = Colors.grey.withOpacity(0.3);
                                    myColorBoy = Colors.blue;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.grey,
                                        )
                                      ]),
                                  height: 140,
                                  width: 140,
                                  child: Icon(
                                    color: myColorBoy,
                                    Icons.male,
                                    size: 115,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    myColorGirl = Colors.pink;
                                    myColorBoy = Colors.grey.withOpacity(0.3);
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.grey,
                                        )
                                      ]),
                                  height: 140,
                                  width: 140,
                                  child: Icon(
                                    color: myColorGirl,
                                    Icons.female,
                                    size: 115,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 32.0),
                          child: NextButton(),
                        ),
                      ],
                    ),
                  ),
                  const AgePicker(),
                  const HeightPicker(),
                  const WeightPicker()
                ],
              ),
            ),
            Center(
                child: SmoothPageIndicator(controller: _controller, count: 4)),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
