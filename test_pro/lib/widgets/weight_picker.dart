import 'package:flutter/cupertino.dart';
import 'package:test_pro/consts/consts.dart';

class WeightPicker extends StatefulWidget {
  const WeightPicker({super.key});

  @override
  State<WeightPicker> createState() => _WeightPickerState();
}

class _WeightPickerState extends State<WeightPicker> {
  @override
  Widget build(BuildContext context) {
    final List item = [
      60,
      61,
      62,
      63,
      64,
      65,
      66,
      67,
      68,
      69,
      70,
      71,
      72,
      73,
      74,
      75,
      76,
      77,
      78,
      79,
      80
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'How much is your weight?',
          style: Sabitler.genderTextStyle,
        ),
        Expanded(
          child: CupertinoPicker(
              onSelectedItemChanged: (index) {},
              itemExtent: 64,
              children: item
                  .map((e) => Center(
                        child: Text(
                          e.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
