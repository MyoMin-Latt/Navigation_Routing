// @13.1 Navigator => between to screens
// @13.2 Name Route => smart cast(as String)
//       Error has with async & await/ _CastError (type 'Null' is not a subtype of type 'String' in type cast)
// @13.3 OnGrenerate Route
//       Can solve above error/ String? _arg = await Navigator.pushNamed(context, 'second',
//                        arguments: 'Data from First Screen') as String?;
// @13.4 onGenerate on Web/ import 'dart:html' as html/ not easy to use
// 


import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:a13_navigation_routing/screen/not_found_screen.dart';
import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
// only for web
// Avoid using web-only libraries outside Flutter web plugin packages
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (RouteSettings settings) {
      if (settings.name == '/') {
        // html.window.history.pushState( null, 'Home', '/');
        return MaterialPageRoute(
          builder: (context) {
            return FirstScreen();
          },
        );
      }
      if (settings.name == '/second') {
        return MaterialPageRoute(
            settings: RouteSettings(arguments: settings.arguments),
            builder: (context) {
              return SecondScreen();
            });
      }
      else{
        return MaterialPageRoute(builder: (context)=>NotFound());
      }
    },
  ));
}
