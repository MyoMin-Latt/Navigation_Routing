import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _name = 'Tun Tun';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondScreen(_name);
              })).then((value) {
                if (value != null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('$value')));
                }
              });
            },
            child: const Text("Go to Second Screen")),
      ),
    );
  }
}
