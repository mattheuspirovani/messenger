import 'package:flutter/material.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_elevated_button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                const Text("What's Up").h1(),
                Expanded(child: Container()),
                Image.asset("assets/imgs/onboarding_couple.png"),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                        "Let's talk with your friends and family wherever and whenever")
                    .subTitle(),
                Expanded(child: Container()),
                CustomElevatedButtonWidget(
                    "Continue with phone",
                    () => Navigator.pushReplacementNamed(
                        context, "/phone-register")),
                Constants.defaultSpaceVertical
              ],
            ),
          ),
        ),
      ),
    );
  }
}
