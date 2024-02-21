import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPageForm extends StatefulWidget {
  @override
  _ThirdPageFormState createState() => _ThirdPageFormState();
}

class _ThirdPageFormState extends State<ThirdPageForm> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Input   1'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Input   2'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Input   3'),
            ),
            SizedBox(height:   20),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}