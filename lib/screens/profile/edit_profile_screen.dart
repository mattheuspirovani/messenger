import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Constants.defaultDivider,
          Constants.defaultSpaceVertical,
          CustomAvatarWidget(
            "MA",
            radius: 70,
            fontSize: 54,
          ),
          Constants.largeSpaceVertical,
          const Text("Set profile photo").bodyText2(),
          Constants.largeSpaceVertical,
          Constants.largeSpaceVertical,
          _buildMenuItem(FeatherIcons.user, "Mattheus Pirovani", "Your name",
              actionIcon: FeatherIcons.edit3,
              actionModalTitle: "Enter your name"),
          ..._buildSeparator(),
          _buildMenuItem(
              FeatherIcons.info, "Em constante evolução!", "Your bio",
              actionIcon: FeatherIcons.edit3,
              actionModalTitle: "Enter your bio"),
          ..._buildSeparator(),
          _buildMenuItem(
              FeatherIcons.phone, "(27) 99816-9706", "Your phone number",
              showIcon: false),
          Constants.defaultSpaceVertical,
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("My profile").h2(),
    );
  }

  Widget _buildMenuItem(IconData iconData, String title, String subTitle,
      {bool? showIcon = true, IconData? actionIcon, String? actionModalTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(iconData),
          Constants.largeSpaceHorizontal,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title).bodyText2(),
              Constants.smallSpaceVertical,
              Text(subTitle).bodyText2(
                  style: const TextStyle(color: Constants.neutralColorGray)),
            ],
          ),
          Expanded(child: Container()),
          if (showIcon!)
            GestureDetector(
                onTap: () {
                  _openModalBottomSheet(context, actionModalTitle!, () {});
                },
                child: Icon(actionIcon))
        ],
      ),
    );
  }

  List<Widget> _buildSeparator() {
    return [
      Constants.defaultSpaceVertical,
      const Padding(
        padding: EdgeInsets.only(left: 24),
        child: Constants.defaultDivider,
      ),
      Constants.defaultSpaceVertical
    ];
  }

  void _openModalBottomSheet(context, String title, VoidCallback action) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Wrap(
              children: [
                Text(title).bodyText1(),
                TextFormField(),
                Constants.defaultSpaceVertical,
                Row(
                  children: const [
                    Constants.defaultSpaceVertical,
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel").bodyText2()),
                    TextButton(
                        onPressed: action,
                        child: const Text("Save").bodyText2()),
                  ],
                )
              ],
            ),
          );
        });
  }
}
