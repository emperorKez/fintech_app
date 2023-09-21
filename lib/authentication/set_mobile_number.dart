import 'package:country_code_picker/country_code_picker.dart';
import 'package:fintech_ui/widgets/header.dart';
import 'package:flutter/material.dart';

class SetMobileNumber extends StatefulWidget {
  const SetMobileNumber({super.key});

  @override
  State<SetMobileNumber> createState() => _SetMobileNumberState();
}

class _SetMobileNumberState extends State<SetMobileNumber> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

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
          'Mobile Number',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'Enter a valid phone number. We will send you a 4-digit code to verify your account',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 20,
        ),
        inputForm()
      ],
    );
  }

  Widget inputForm() {
    return Form(
        key: _formKey,
        child: TextFormField(
            controller: _controller,
            keyboardType: TextInputType.phone,
            autofocus: false,
            onChanged: (value) {},
            decoration: const InputDecoration(
                isDense: true,
                filled: false,
                hintText: 'Enter a valid phone number',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
                contentPadding: EdgeInsets.all(10),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                prefix: CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'NG',
                  //  favorite: ['+39','FR'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                )),
            validator: (value) {
              return value == null || value.length <= 7
                  ? 'enter a valid phone number'
                  : null;
            }));
  }

  Widget bottomButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
        child: const Text('Send Code'));
  }
}
