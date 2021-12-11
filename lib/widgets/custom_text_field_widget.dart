import 'package:flutter/material.dart';
import 'package:messenger/utils/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  const CustomTextFieldWidget({Key? key, this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Constants.neutralColorBlack,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Constants.neutralColorGrayLight, width: 1.2),
            borderRadius: BorderRadius.all(Radius.circular(100))),
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Constants.neutralColorBlack, width: 1.2),
            borderRadius: BorderRadius.all(Radius.circular(100))),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
