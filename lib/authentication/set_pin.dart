import 'package:fintech_ui/widgets/header.dart';
import 'package:fintech_ui/widgets/input_pin.dart';
import 'package:flutter/material.dart';

class SetPin extends StatelessWidget {
  const SetPin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const Header(),
      body: body(context: context),
      bottomNavigationBar: bottomButton(context),
    ));
  }

  Widget body({required BuildContext context}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'Set your PIN',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'You will use this to login next time',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 20,
        ),
        const InputPin()
      ],
    );
  }

  Widget bottomButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
        child: const Text('Continue'));
  }
}
