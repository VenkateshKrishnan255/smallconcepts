import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';  // Import the flutter_switch package

class SwitchButtonPage extends StatefulWidget {
  const SwitchButtonPage({super.key});

  @override
  State<SwitchButtonPage> createState() => _SwitchButtonPageState();
}

class _SwitchButtonPageState extends State<SwitchButtonPage> {
  bool status = false;  // Initialize the status variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: FlutterSwitch(
                activeColor: Colors.green,
                width: 125.0,
                height: 55.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
