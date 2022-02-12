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
            Text('onGenerate Route ကို သုံးတဲ့အချိန်မှာ Transition Animation နှင့်တွဲဖက်အသုံးပြုနည်း', 
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            }, child: Text('Go to second Screen')),
          ],
        ),
      ),
    );
  }
}
