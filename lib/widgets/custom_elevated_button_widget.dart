import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButtonWidget(this.text, this.onPressed, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text(text))));
  }
}
