import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:messenger/screens/contacts/contacts_screen.dart';
import 'package:messenger/screens/messages/messages_screen.dart';
import 'package:messenger/screens/profile/profile_screen.dart';
import 'package:messenger/utils/constants.dart';
import 'package:messenger/utils/text_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  String _currentTitle = "Messages";

  final List<Widget> _screens = [
    const MessagesScreen(),
    const ContactsScreen(),
    const ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          _currentTitle = "Messages";
          break;
        case 1:
          _currentTitle = "Contacts";
          break;
        case 2:
          _currentTitle = "My profile";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_currentTitle).h2(),
          actions: _buildActions(),
        ),
        body: Column(
          children: [..._buildContent()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.messageCircle), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.users), label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user), label: "Profile"),
          ],
        ),
        floatingActionButton: _buildFloatingActionBar());
  }

  List<Widget> _buildContent() {
    List<Widget> widgets = [];
    if (_currentIndex != 2) {
      widgets.add(Constants.defaultDivider);
    }
    widgets.add(Expanded(child: _screens[_currentIndex]));
    widgets.add(Constants.defaultDivider);
    return widgets;
  }

  List<Widget>? _buildActions() {
    if (_currentIndex != 2) {
      return const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            FeatherIcons.search,
            color: Constants.neutralColorBlack,
          ),
        )
      ];
    }
  }

  Widget? _buildFloatingActionBar() {
    String? route;
    IconData? iconData;

    if (_currentIndex == 0 || _currentIndex == 1) {
      if (_currentIndex == 0) {
        route = "/new-message";
        iconData = FeatherIcons.edit3;
      } else {
        route = "/add-contact";
        iconData = FeatherIcons.userPlus;
      }

      return FloatingActionButton(
        backgroundColor: Constants.brandColorBlack,
        onPressed: () {
          Navigator.pushNamed(context, route!);
        },
        child: Icon(iconData),
      );
    }
  }
}
