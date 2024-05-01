import 'package:flutter/material.dart';

class CheckBoxPAge extends StatefulWidget {
  const CheckBoxPAge({super.key});

  @override
  State<CheckBoxPAge> createState() => _CheckBoxPAgeState();
}


class _CheckBoxPAgeState extends State<CheckBoxPAge> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked=value!;
                  });
                }),
                Text('This the Terms And Condition Services')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
