import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_application/screens/people.dart';
import 'package:social_media_application/screens/settings.dart';

import 'calls.dart';
import 'chats.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List screens = [
    Chats(),
    Calls(),
    People(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(
                CupertinoIcons.chat_bubble_2_fill,
              ),
            ),
            BottomNavigationBarItem(
              label: "Calls",
              icon: Icon(
                CupertinoIcons.phone,
              ),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(
                CupertinoIcons.person_alt_circle,
              ),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                CupertinoIcons.settings_solid,
              ),
            ),
          ],
        ),
        tabBuilder: ((context, index) {
          return screens[index];
        }),
      ),
    );
  }
}
