import 'package:flutter/material.dart';
import 'package:messenger/utils/constants.dart';

class CustomAvatarWidget extends StatelessWidget {
  final String initials;
  final double radius;
  final double fontSize;
  const CustomAvatarWidget(this.initials,
      {Key? key, this.radius = 32.5, this.fontSize = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
          color: Constants.brandColorGray,
          borderRadius: BorderRadius.circular(70)),
      child: Center(
          child: Text(
        initials,
        style: TextStyle(fontSize: fontSize),
      )),
    );
  }
}
