import 'package:flutter/material.dart';
import 'package:messenger/dto/message_dto.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';
import 'package:messenger/widgets/custom_avatar_widget.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List<MessageDto> _messages = [
    MessageDto("rosinete Dettman", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Grupo do Seguro 23", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Mae da minha mãe", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("rosinete Dettman", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Grupo do Seguro 23", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Mae da minha mãe", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("rosinete Dettman", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Grupo do Seguro 23", "oi tudo bem?", DateTime.now(), ""),
    MessageDto("Mae da minha mãe", "oi tudo bem?", DateTime.now(), ""),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 16),
          child: Row(
            children: [
              _buildAvatar(_messages[index]),
              Constants.defaultSpaceHorizontal,
              _buildContentMessage(_messages[index])
            ],
          ),
        );
      },
    );
  }

  Widget _buildAvatar(MessageDto messageDto) {
    return CustomAvatarWidget(
        messageDto.username.substring(0, 2).toUpperCase());
  }

  Widget _buildContentMessage(MessageDto messageDto) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(messageDto.username).bodyText1(),
              Text("${messageDto.date.hour}:${messageDto.date.minute}")
                  .bodyText3()
            ],
          ),
          Text(messageDto.text).subTitle(),
          Constants.smallSpaceVertical,
          Constants.defaultDivider
        ],
      ),
    );
  }
}
