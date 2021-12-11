import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:messenger/dto/contact_dto.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';
import 'package:messenger/widgets/user_status_widget.dart';

class ContactsWidget extends StatelessWidget {
  ContactsWidget({Key? key}) : super(key: key);

  final List<ContactDto> _contacts = [
    ContactDto("Carlos Carvalhosa", true, DateTime.now()),
    ContactDto("Fernanda Pires", true, DateTime.now()),
    ContactDto("Thiago Bendevose", true, DateTime.now()),
    ContactDto("Sofia Magno", true, DateTime.now()),
    ContactDto("Tissane Oliveira", false,
        DateTime.now().subtract(const Duration(days: 10)))
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 24,
        );
      },
      itemCount: _contacts.length,
      itemBuilder: (context, index) {
        return _buildContact(_contacts[index]);
      },
    );
  }

  Widget _buildContact(ContactDto contactDto) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Constants.defaultSpaceHorizontal,
        _buildAvatar(contactDto),
        Constants.defaultSpaceHorizontal,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUsername(contactDto),
              Constants.smallSpaceVertical,
              UserStatusWidget(contactDto.online,
                  dateLastSeen: contactDto.dateLastSeen)
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAvatar(ContactDto contactDto) {
    return CustomAvatarWidget(
        contactDto.username.substring(0, 2).toUpperCase());
  }

  Widget _buildUsername(ContactDto contactDto) {
    return Text(contactDto.username).bodyText1();
  }
}
