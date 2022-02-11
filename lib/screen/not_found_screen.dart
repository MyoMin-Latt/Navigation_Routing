import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
      'Not Found',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ));
  }
}
