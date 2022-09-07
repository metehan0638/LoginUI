
import 'package:flutter/cupertino.dart';
import 'package:test_pro/consts/consts.dart';

class AgePicker extends StatefulWidget {
  const AgePicker({super.key});

  @override
  State<AgePicker> createState() => _AgePickerState();
}

class _AgePickerState extends State<AgePicker> {
  @override
  Widget build(BuildContext context) {
    final List item = [
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      40,
      41,
      42,
      43,
      44,
      45,
      46,
      47,
      48,
      49,
      50
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'How old are you?',
          style: Sabitler.genderTextStyle,
        ),
        Expanded(
          child: CupertinoPicker(
              onSelectedItemChanged: (index) {},
              itemExtent: 64,
              children: item
                  .map((e) => Center(
                        child: Text(e.toString(),style: const TextStyle(fontSize: 20),),
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
