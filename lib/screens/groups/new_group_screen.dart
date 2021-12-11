import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/dto/contact_dto.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({Key? key}) : super(key: key);

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  final List<ContactDto> _selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Constants.defaultDivider,
          Constants.defaultSpaceVertical,
          if (_selectedContacts.length > 0) _buildSelectedContacts()
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("New Group").h2(),
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

  Widget _buildSelectedContacts() {
    return Container();
  }
}
