import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPageForm extends StatefulWidget {
  @override
  _SecondPageFormState createState() => _SecondPageFormState();
}

class _SecondPageFormState extends State<SecondPageForm> {
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
        title: Text('Second Page Form'),
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