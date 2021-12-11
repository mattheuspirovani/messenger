import 'package:flutter/material.dart';
import '../../utils/text_extension.dart';
import '../../utils/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 71,
            ),
            const Text("Enter code").h2(),
            Constants.defaultSpaceVertical,
            const Text("We’ve sent the code via SMS to +62 999 9999 0000.")
                .subTitle(),
            const SizedBox(
              height: 50,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) => print(value),
              cursorColor: Constants.neutralColorBlack,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldWidth: 60,
                  activeFillColor: Constants.neutralColorGrayLight,
                  activeColor: Constants.neutralColorBlack,
                  inactiveColor: Constants.neutralColorGrayLight,
                  selectedColor: Constants.neutralColorGrayLight,
                  errorBorderColor: Constants.neutralColorGrayLight),
            ),
            Constants.defaultExpanded,
            TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/create-username"),
                child: const Text("Don't get the code? Resend code")),
            Constants.defaultSpaceVertical
          ],
        ),
      )),
    );
  }
}
