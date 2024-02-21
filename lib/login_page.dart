import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/home_page.dart';

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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    if (_username == 'student' && _password == 'password') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(isDarkMode: false)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/college logo.jpg', width:   500, height:   500),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'SAP ID'),
                      validator: (value) {
                        if (value == null || value != 'student') {
                          return 'Please enter the correct username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      validator: (value) {
                        if (value == null || value != 'password') {
                          return 'Please enter the correct password';
                        }
                        return null;
                      },
                      obscureText: true,
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white70),
                      onPressed: _submit,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
