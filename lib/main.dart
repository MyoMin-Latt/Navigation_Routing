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
// @13.8 Navigation Animation Part 2 [Rotation Transition]
// @13.9 Navigation Animation Part 3 [Fade & Scale Transition]
// @13.10 Transition Animation with onGenerate Route
//        onGenerate Route ကို သုံးတဲ့အချိန်မှာ Transition Animation နှင့်တွဲဖက်အသုံးပြုနည်း
// 


import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: '/first',
      onGenerateRoute: (RouteSettings settings) {
        if(settings.name == '/first'){
          return PageRouteBuilder(
            transitionDuration: Duration(seconds: 3),
            pageBuilder: (_, animation, __){
              return RotationTransition(
                child: FirstScreen(),
                turns: Tween<double>(begin: 0, end: 1).animate(animation));
            });
        }
        else if(settings.name == '/second'){
          return PageRouteBuilder(
            transitionDuration: Duration(seconds: 3),
            pageBuilder: (_, animation, __){
              return SlideTransition(
                child: SecondScreen(),
                position: Tween<Offset>(begin: Offset(1,0), end: Offset(0,0)).animate(animation));
            });
        }
      },
      home: FirstScreen(),
    )
  );
}
