import 'package:flutter/cupertino.dart';
import 'package:test_pro/consts/consts.dart';

class HeightPicker extends StatefulWidget {
  const HeightPicker({super.key});

  @override
  State<HeightPicker> createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  @override
  Widget build(BuildContext context) {
    final List item = [
      '160 cm',
      '161 cm',
      '162 cm',
      '163 cm',
      '164 cm',
      '165 cm',
      '166 cm',
      '167 cm',
      '168 cm',
      '169 cm',
      '170 cm',
      '171 cm',
      '172 cm',
      '173 cm',
      '174 cm',
      '175 cm',
      '176 cm',
      '177 cm',
      '178 cm',
      '179 cm',
      '180 cm',
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'How much your lenght?',
          style: Sabitler.genderTextStyle,
        ),
        Expanded(
          child: CupertinoPicker(
              onSelectedItemChanged: (index) {},
              itemExtent: 64,
              children: item
                  .map((e) => Center(
                        child: Text(e),
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
