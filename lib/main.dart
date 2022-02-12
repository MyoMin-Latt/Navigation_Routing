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

import 'package:a13_navigation_routing/screen/home.dart';
import 'package:a13_navigation_routing/screen/location.dart';
import 'package:a13_navigation_routing/screen/music.dart';
import 'package:a13_navigation_routing/screen/setting.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Location'),
    const BottomNavigationBarItem(icon: Icon(Icons.queue_music), label: 'Music'),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
  ];
  Widget _body = Home();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[50],
        currentIndex: _index,
        onTap: (val) {
          print(val);
          setState(() {
            _index = val;
            if(val == 0){
              _body = const Home();
            }
            else if(val == 1){
              _body = const Location();
            }
            else if(val == 2){
              _body = const Music();
            }
            else{
              _body = const Setting();
            }
          });
        },
        items: _items),
    );
  }
}