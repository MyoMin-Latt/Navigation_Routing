import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String _name;
  const SecondScreen(this._name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text('Data from FirstScreen : $_name')),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Data from Second Screen');
              },
              child: const Text('Pop to FirstScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
