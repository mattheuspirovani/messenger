import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:messenger/dto/contact_dto.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/contacts_widget.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Constants.defaultDivider,
          Constants.defaultSpaceVertical,
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/new-group");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FeatherIcons.users,
                        size: 26,
                      ),
                      Constants.defaultSpaceHorizontal,
                      const Text("New Group").bodyText1()
                    ],
                  ),
                )
              ],
            ),
          ),
          Constants.defaultSpaceVertical,
          const Divider(
            thickness: 10,
            color: Constants.brandColorGray,
          ),
          Constants.defaultSpaceVertical,
          Expanded(child: ContactsWidget())
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("New Message").h2(),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            FeatherIcons.search,
            color: Constants.neutralColorBlack,
          ),
        )
      ],
    );
  }
}
