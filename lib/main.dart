import 'package:flutter/material.dart';
import 'package:flutter_smallconcept_venkat/smallconcept/alert_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: AlertDialogPage()
    );
  }
}
