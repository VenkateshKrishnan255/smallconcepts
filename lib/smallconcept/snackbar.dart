import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Snack Bar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      shape: Border(top: BorderSide()),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.teal,
                      content: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(77)),
                        child: Text('Success!!!'),
                      ),
                      duration: Duration(seconds: 5),
                    ),
                  );
                },
                child: Text('Click here'),
              ),
            )
          ],
        ),
    );
  }
}
