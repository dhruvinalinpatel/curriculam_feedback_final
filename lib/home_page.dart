import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/settings_page.dart';
import 'package:new_project/new_page_form.dart';
import 'package:new_project/second_page_form.dart';
import 'package:new_project/third_page_form.dart';


class HomePage extends StatefulWidget {
  final bool isDarkMode;

  HomePage({required this.isDarkMode});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex =   0;
  bool _isDarkMode = false;

  void _toggleBrightness() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: _currentIndex ==   1
            ? SettingsPage(isDarkMode: _isDarkMode, onToggle: _toggleBrightness)
            : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width *   0.5,
                height: MediaQuery.of(context).size.height *   0.15,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPageForm()),
                    );
                  },
                  child: Text('curriculum feedback'),
                ),
              ),
              SizedBox(height:   20),
              Container(
                width: MediaQuery.of(context).size.width *   0.5,
                height: MediaQuery.of(context).size.height *   0.15,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPageForm()),
                    );
                  },
                  child: Text('Teacher feedback'),
                ),
              ),
              SizedBox(height:   20),
              Container(
                width: MediaQuery.of(context).size.width *   0.5,
                height: MediaQuery.of(context).size.height *   0.15,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPageForm()),
                    );
                  },
                  child: Text('Genral feedback'),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}