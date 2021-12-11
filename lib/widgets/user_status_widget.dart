import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';

class UserStatusWidget extends StatelessWidget {
  final bool online;
  final DateTime? dateLastSeen;
  const UserStatusWidget(this.online, {Key? key, this.dateLastSeen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (online) {
      return const Text("Online")
          .bodyText2(style: const TextStyle(color: Constants.accentColorGreen));
    } else {
      return Text(
        "Last seen on ${DateFormat("dd/MM/yyyy hh:mm:ss").format(dateLastSeen!)}",
        overflow: TextOverflow.ellipsis,
      ).bodyText2(style: const TextStyle(color: Constants.neutralColorGray));
    }
  }
}
