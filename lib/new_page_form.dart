import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPageForm extends StatefulWidget {
  @override
  _NewPageFormState createState() => _NewPageFormState();
}

class _NewPageFormState extends State<NewPageForm> {
  final _formKey = GlobalKey<FormState>();
  int _selectedRating =   1;
  int _selectedRating2 =   1;
  bool _isMostBeneficialYes = false;
  bool _isMostBeneficialNo = false;
  bool _isLeastBeneficialYes = false;

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
        title: Text('Curriculum feedback'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButtonFormField<int>(
              value: _selectedRating,
              items: List<DropdownMenuItem<int>>.generate(6, (i) => DropdownMenuItem<int>(
                value: i,
                child: Text('$i'),
              )),
              onChanged: (int? newValue) {
                setState(() {
                  _selectedRating = newValue!;
                });
              },
              decoration: InputDecoration(labelText: 'How would you rate the course content?'),
            ),
            DropdownButtonFormField<int>(
              value: _selectedRating2,
              items: List<DropdownMenuItem<int>>.generate(6, (i) => DropdownMenuItem<int>(
                value: i,
                child: Text('$i'),
              )),
              onChanged: (int? newValue) {
                setState(() {
                  _selectedRating2 = newValue!;
                });
              },
              decoration: InputDecoration(labelText: 'How would you rate the course in general?'),
            ),
            CheckboxListTile(
              title: Text('Is the amount of work appropriate considering the number of credits?'),
              value: _isMostBeneficialYes,
              onChanged: (bool? value) {
                setState(() {
                  _isMostBeneficialYes = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('What do you find the most beneficial about this course?'),
              value: _isMostBeneficialNo,
              onChanged: (bool? value) {
                setState(() {
                  _isMostBeneficialNo = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('What do you find least beneficial about this course?'),
              value: _isLeastBeneficialYes,
              onChanged: (bool? value) {
                setState(() {
                  _isLeastBeneficialYes = value!;
                });
              },
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

