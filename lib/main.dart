import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'settings_page.dart';
import 'profile_page.dart';
import 'new_page_form.dart';
import 'second_page_form.dart';
import 'third_page_form.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
