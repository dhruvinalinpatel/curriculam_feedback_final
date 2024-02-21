import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/profile_page.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyle(fontSize:  24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:  10),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Major')),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('johndoe@example.com')),
                    DataCell(Text('20')),
                    DataCell(Text('Computer Science')),
                  ],
                ),
              ],
            ),
            SizedBox(height:  10),
            Text(
              'Hobbies: Coding, Reading, Hiking',
              style: TextStyle(fontSize:  18),
            ),
          ],
        ),
      ),
    );
  }
}

