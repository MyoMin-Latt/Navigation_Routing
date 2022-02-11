import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _arg = ModalRoute.of(context)!.settings.arguments.toString();
    String _arg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text(_arg)),
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
