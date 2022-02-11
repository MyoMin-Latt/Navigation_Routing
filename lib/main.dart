// @13.1 Navigator => between to screens
// @13.2 Name Route => smart cast(as String)
//       Error has with async & await/ _CastError (type 'Null' is not a subtype of type 'String' in type cast)
// @13.3 OnGrenerate Route
//       Can solve above error/ String? _arg = await Navigator.pushNamed(context, 'second',
//                        arguments: 'Data from First Screen') as String?;
// @13.4 onGenerate on Web/ import 'dart:html' as html/ not easy to use
// @13.5 Web Url Routing with GetX



import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:a13_navigation_routing/screen/not_found_screen.dart';
import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

// only for web
// Avoid using web-only libraries outside Flutter web plugin packages
void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    initialRoute: '/',
    unknownRoute: GetPage(name: '/notfound', page: ()=>const NotFound()),
    getPages: [
      GetPage(name: '/', page: ()=> const FirstScreen()),
      GetPage(name: '/second', page: ()=> const SecondScreen())
    ],
    
  ));
}
