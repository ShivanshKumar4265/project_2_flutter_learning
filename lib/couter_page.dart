import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CouterPage extends StatefulWidget {
  const CouterPage({super.key});

  @override
  State<CouterPage> createState() => _CouterPageState();
}

class _CouterPageState extends State<CouterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed counter button this many times:"),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: _increment,
              child: Text(
                "Increase",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Example: specify button color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(4), // Set corner radius here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }
}
