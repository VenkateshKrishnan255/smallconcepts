import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  var _selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('DropDown')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              elevation: 22,
              value: _selectedArea,
              hint: Text('Select City'),
              items: <String>['Chennai', 'Kolkata', 'Mumbai', 'Delhi'].map(
                    (String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                },
              ).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedArea = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
