import 'package:flutter/material.dart';
import 'package:test_pro/consts/consts.dart';

class BackPageWidget extends StatefulWidget {
  const BackPageWidget({super.key});

  @override
  State<BackPageWidget> createState() => _BackPageWidgetState();
}

class _BackPageWidgetState extends State<BackPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Sabitler.paddingIconButton,
      child: IconButton(
        iconSize: 28,
        color: Colors.black,
        onPressed: () {
          
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
