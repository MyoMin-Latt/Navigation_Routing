import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/second');
            },
            child: const Text("Go to Second Screen")),
      ),
    );
  }
}
