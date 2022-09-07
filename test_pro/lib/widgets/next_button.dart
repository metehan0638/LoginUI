import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 125.0, vertical: 16),
        child: Text(
          'Next',
          style: TextStyle(fontSize: 18),
        ),
      ),
      onPressed: () {},
    );
  }
}
