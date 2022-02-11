import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, 'second',
                      arguments: 'Data from First Screen')
                  .then((value) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$value"),
                  action: SnackBarAction(label: 'Cancel', onPressed: () {}),
                ));
              });

              // ***
              // Error has with async & await
              // _CastError (type 'Null' is not a subtype of type 'String' in type cast)

            },
            child: const Text("Go to Second Screen")),
      ),
    );
  }
}
