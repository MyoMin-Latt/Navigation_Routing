// @13.1 Navigator => between to screens
// @13.2 Name Route => smart cast(as String)
//       Error has with async & await/ _CastError (type 'Null' is not a subtype of type 'String' in type cast)


import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      routes: {
        'first' : (context) => const FirstScreen(),
        "second" : (context) => const SecondScreen()
      },
      home: const FirstScreen(),
    )
  );
}