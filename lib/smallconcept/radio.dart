import 'package:flutter/material.dart';

class RadioBoxPage extends StatefulWidget {
  const RadioBoxPage({super.key});

  @override
  State<RadioBoxPage> createState() => _RadioBoxPageState();
}

class _RadioBoxPageState extends State<RadioBoxPage> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text('Do you like MSD'),
                Radio(
                    value: 'yes',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    }),
                Text('yes'),
                Radio(
                    value: 'No',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue=value;
                      });
                    }),
                Text('No')
              ],
            )
          ],
        ),
      ),
    );
  }
}
