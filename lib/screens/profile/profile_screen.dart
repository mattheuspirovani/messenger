import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/dto/user_dto.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';
import 'package:messenger/widgets/user_status_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserDto("Mattheus Pirovani", true);
    return SingleChildScrollView(
      child: Column(
        children: [
          Constants.defaultSpaceVertical,
          _buildUserCard(user, context),
          Constants.defaultSpaceVertical,
          Constants.defaultDivider,
          Constants.defaultSpaceVertical,
          _buildSettingsMenu(),
          Constants.largeDivider,
          Constants.largeSpaceVertical,
          _buildHelpMenu(),
        ],
      ),
    );
  }

  Widget _buildUserCard(UserDto user, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/edit-profile");
      },
      child: Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          CustomAvatarWidget(user.username!.substring(0, 2).toUpperCase()),
          Constants.defaultSpaceHorizontal,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.username!).bodyText2(),
              const UserStatusWidget(true)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsMenu() {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Settings").bodyText2(),
          ..._buildMenuItem("Notifications", FeatherIcons.bell),
          ..._buildMenuItem("Privacy and Security", FeatherIcons.lock),
          ..._buildMenuItem("Storage and Data", FeatherIcons.pieChart,
              showLastDivider: false),
        ],
      ),
    );
  }

  Widget _buildHelpMenu() {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Help").bodyText2(),
          ..._buildMenuItem("Whats Up FAQ", FeatherIcons.helpCircle),
          ..._buildMenuItem("Privacy policy", FeatherIcons.shield),
          ..._buildMenuItem("Ask a question", FeatherIcons.alertCircle,
              showLastDivider: false),
        ],
      ),
    );
  }

  List<Widget> _buildMenuItem(String title, IconData iconData,
      {bool showLastDivider = true}) {
    return [
      Constants.largeSpaceVertical,
      Row(
        children: [
          Icon(iconData),
          Constants.largeSpaceHorizontal,
          Text(title).bodyText2()
        ],
      ),
      Constants.defaultSpaceVertical,
      if (showLastDivider) Constants.defaultDivider,
    ];
  }
}
