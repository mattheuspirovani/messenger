import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';
import 'package:messenger/widgets/custom_text_field_widget.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Constants.defaultDivider,
          Constants.defaultSpaceVertical,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: const [
                CustomAvatarWidget(""),
                Constants.largeSpaceVertical,
                CustomTextFieldWidget(
                  prefixIcon: Icon(
                    FeatherIcons.user,
                    color: Constants.neutralColorBlack,
                  ),
                ),
                Constants.largeSpaceVertical,
                CustomTextFieldWidget(
                  prefixIcon: Icon(
                    FeatherIcons.globe,
                    color: Constants.neutralColorBlack,
                  ),
                ),
                Constants.largeSpaceVertical,
                CustomTextFieldWidget(
                  prefixIcon: Icon(
                    FeatherIcons.phone,
                    color: Constants.neutralColorBlack,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Add contact").h2(),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            FeatherIcons.check,
            color: Constants.neutralColorBlack,
          ),
        )
      ],
    );
  }
}
