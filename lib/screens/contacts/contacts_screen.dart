import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/contacts_widget.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Constants.defaultSpaceVertical,
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    FeatherIcons.userPlus,
                    size: 26,
                  ),
                  Constants.defaultSpaceHorizontal,
                  const Text("Invite friends").bodyText1()
                ],
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
    );
  }
}
