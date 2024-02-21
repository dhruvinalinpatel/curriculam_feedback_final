import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/profile_page.dart';
import 'package:new_project/profile_page.dart';


class SettingsPage extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggle;

  SettingsPage({required this.isDarkMode, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Settings Page'),
          SwitchListTile(
            title: Text('Dark Mode'),
            value: isDarkMode,
            onChanged: (bool value) {
              onToggle();
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}