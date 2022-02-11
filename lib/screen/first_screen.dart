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
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    pageBuilder: (_, animation, __){
                      return RotationTransition(
                        child: SecondScreen(),
                        turns: Tween<double>(
                          begin: 0.5,
                          end: 1,
                        ).animate(CurvedAnimation(parent: animation, curve: Curves.bounceInOut)));
                    }));
            },
            child: const Text("Go to Second Screen")),
      ),
    );
  }
}
