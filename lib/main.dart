import 'package:flutter/material.dart';
import 'package:messenger/screens/contacts/add_contact_screen.dart';
import 'package:messenger/screens/groups/new_group_screen.dart';
import 'package:messenger/screens/onboarding/create_username_screen.dart';
import 'package:messenger/screens/home_screen.dart';
import 'package:messenger/screens/messages/new_message_screen.dart';
import 'package:messenger/screens/onboarding/onboarding_screen.dart';
import 'package:messenger/screens/onboarding/phone_register_screen.dart';
import 'package:messenger/screens/onboarding/verification_code_screen.dart';
import 'package:messenger/screens/profile/edit_profile_screen.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          fontFamily: 'SFUI',
          scaffoldBackgroundColor: Constants.scaffoldColorBackground,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              centerTitle: false,
              elevation: 0,
              backgroundColor: Constants.neutralColorWhite),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Constants.neutralColorGray),
            bodyText2: TextStyle(color: Constants.neutralColorBlack),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              minimumSize: const Size(110, 56),
              backgroundColor:
                  Constants.brandColorBlack, // This is a custom color variable
              textStyle: const TextStyle(color: Constants.neutralColorWhite),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
            primary: Constants.neutralColorBlack,
          )),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Constants.scaffoldColorBackground,
              selectedItemColor: Constants.neutralColorBlack)),
      initialRoute: "/",
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/phone-register': (context) => const PhoneRegisterScreen(),
        '/verification-code': (context) => const VerificationCodeScreen(),
        '/create-username': (context) => const CreateUsernameScreen(),
        '/home': (context) => const HomeScreen(),
        '/new-message': (context) => const NewMessageScreen(),
        '/new-group': (context) => const NewGroupScreen(),
        '/add-contact': (context) => const AddContactScreen(),
        '/edit-profile': (context) => const EditProfileScreen()
      },
    );
  }
}
