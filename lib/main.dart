// @13.1 Navigator => between to screens
// @13.2 Name Route => smart cast(as String)
//       Error has with async & await/ _CastError (type 'Null' is not a subtype of type 'String' in type cast)
// @13.3 OnGrenerate Route
//       Can solve above error/ String? _arg = await Navigator.pushNamed(context, 'second',
//                        arguments: 'Data from First Screen') as String?;
// @13.4 onGenerate on Web/ import 'dart:html' as html/ not easy to use
// @13.5 Web Url Routing with GetX / not found page error/ for web
// @13.6 Web url routing with GetX Part 2/ found error page, trans cannot work in the first page(GetPage)/ for web
// @13.7 Navigation Animation Part 1 (Slide Transition)



import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: FirstScreen(),
    )
  );
}
