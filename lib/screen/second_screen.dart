import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(context, 
            // PageRouteBuilder(
            //   transitionDuration: Duration(seconds: 2),
            //   pageBuilder: (_, animation, __) {
            //   return SlideTransition(
            //     child: FirstScreen(),
            //     position: Tween<Offset>(begin: Offset(0,0), end: Offset(1, 0))
            //     .animate(CurvedAnimation(parent: animation, curve: Curves.bounceIn))
            //   );
            // },));
          },
          child: const Text('Pop to FirstScreen'),
        ),
      ),
    );
  }
}
