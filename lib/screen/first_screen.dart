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
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 3),
                          pageBuilder: (_, animation, __) {
                            return SlideTransition(
                                child: SecondScreen(),
                                position: Tween<Offset>(
                                        begin: Offset(1, 0), end: Offset(0, 0))
                                    .animate(CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.bounceInOut)));
                          }));
                },
                child: Text("Slide Navigator")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 2),
                          pageBuilder: (_, animation, __) {
                            return RotationTransition(
                                child: SecondScreen(),
                                turns: Tween<double>(
                                  begin: 0.5,
                                  end: 1,
                                ).animate(CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.bounceInOut)));
                          }));
                },
                child: const Text("Rotation Navigate")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 3),
                          pageBuilder: (_, animation, __) {
                            return FadeTransition(
                                child: SecondScreen(),
                                opacity: Tween<double>(begin: 0.0, end: 1)
                                    .animate(animation));
                          }));
                },
                child: Text('Fade Navigate')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 3),
                          pageBuilder: (_, animation, __) {
                            return ScaleTransition(
                                child: SecondScreen(),
                                scale: Tween<double>(begin: 0, end: 1)
                                    .animate(animation));
                          }));
                },
                child: Text('Scale Navigate'))
          ],
        ),
      ),
    );
  }
}
