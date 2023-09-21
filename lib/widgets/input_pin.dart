import 'package:flutter/material.dart';

class InputPin extends StatefulWidget {
  const InputPin({this.shuffle = false, super.key});
  final bool shuffle;

  @override
  State<InputPin> createState() => _InputPinState();
}

class _InputPinState extends State<InputPin> {
  final List<int> digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  List<int> selectedDigits = [];

  @override
  Widget build(BuildContext context) {
    if (widget.shuffle) {
      digits.shuffle();
    }

    return Container(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputBox(
                  isActive: selectedDigits.isEmpty,
                  isFilled: selectedDigits.isNotEmpty),
              inputBox(
                  isActive: selectedDigits.length == 1,
                  isFilled: selectedDigits.length > 1),
              inputBox(
                  isActive: selectedDigits.length == 2,
                  isFilled: selectedDigits.length > 2),
              inputBox(
                  isActive: selectedDigits.length == 3,
                  isFilled: selectedDigits.length > 3)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dialInput(value: digits[0]),
              dialInput(value: digits[1]),
              dialInput(value: digits[2]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dialInput(value: digits[3]),
              dialInput(value: digits[4]),
              dialInput(value: digits[5]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dialInput(value: digits[6]),
              dialInput(value: digits[7]),
              dialInput(value: digits[8]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Text(',')),
              dialInput(value: digits[9]),
              IconButton(
                  onPressed: () {
                    if (selectedDigits.isNotEmpty) {
                      setState(() {
                        selectedDigits.removeLast();
                      });
                    }
                  },
                  icon: const Icon(Icons.backspace))
            ],
          ),
        ],
      ),
    );
  }

  Widget dialInput({required int value}) {
    return IconButton(
        onPressed: () {
          if (selectedDigits.length < 4) {
            setState(() {
              selectedDigits.add(value);
            });
          }
        },
        icon: Text(
          value.toString(),
          style: Theme.of(context).textTheme.titleSmall,
        ));
  }

  Widget inputBox({required bool isFilled, required bool isActive}) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? Theme.of(context).primaryColor : null,
          border: Border.all(width: 1, color: Theme.of(context).primaryColor)),
      child: isFilled
          ? const Center(
              child: Icon(Icons.emergency),
            )
          : null,
    );
  }
}
