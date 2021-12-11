import 'package:flutter/material.dart';
import '../../widgets/custom_elevated_button_widget.dart';
import '../../widgets/custom_text_field_widget.dart';
import '../../utils/text_extension.dart';
import '../../utils/constants.dart';

class CreateUsernameScreen extends StatelessWidget {
  const CreateUsernameScreen({Key? key}) : super(key: key);

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
            const Text("Create your name").h2(),
            Constants.defaultSpaceVertical,
            const Text("Get more people to know your name.").subTitle(),
            const SizedBox(
              height: 50,
            ),
            const CustomTextFieldWidget(
              prefixIcon: Icon(
                Icons.person_outline_outlined,
                color: Constants.neutralColorBlack,
              ),
            ),
            Constants.defaultExpanded,
            CustomElevatedButtonWidget(
                "Next", () => Navigator.pushReplacementNamed(context, "/home")),
            Constants.defaultSpaceVertical
          ],
        ),
      )),
    );
  }
}
