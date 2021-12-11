import 'package:flutter/material.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_elevated_button_widget.dart';
import 'package:messenger/widgets/custom_text_field_widget.dart';

class PhoneRegisterScreen extends StatelessWidget {
  const PhoneRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 71,
              ),
              const Text("Enter your phone number").h2(),
              Constants.defaultSpaceVertical,
              const Text(
                      "Please confirm your region and enter your phone number.")
                  .subTitle(),
              const SizedBox(
                height: 50,
              ),
              const CustomTextFieldWidget(
                prefixIcon: Icon(
                  Icons.language,
                  color: Constants.neutralColorBlack,
                ),
              ),
              Constants.defaultSpaceVertical,
              const CustomTextFieldWidget(
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: Constants.neutralColorBlack,
                ),
              ),
              Constants.defaultExpanded,
              CustomElevatedButtonWidget(
                  "Continue",
                  () => Navigator.pushReplacementNamed(
                      context, "/verification-code")),
              Constants.defaultSpaceVertical
            ],
          ),
        ),
      ),
    );
  }
}
