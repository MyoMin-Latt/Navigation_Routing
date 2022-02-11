// @13.1 Navigator => between to screens
// @13.2 Name Route => smart cast(as String)
//       Error has with async & await/ _CastError (type 'Null' is not a subtype of type 'String' in type cast)
// @13.3 OnGrenerate Route
//       Can solve above error/ String? _arg = await Navigator.pushNamed(context, 'second',
                      // arguments: 'Data from First Screen') as String?;





import 'package:a13_navigation_routing/screen/first_screen.dart';
import 'package:a13_navigation_routing/screen/second_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: 'first',
      onGenerateRoute: (RouteSettings settings){
        if(settings.name == 'first'){
          return MaterialPageRoute(builder: (context) {
            return FirstScreen();
          },);
        }
        if(settings.name == 'second'){
          return MaterialPageRoute(
            settings: RouteSettings(arguments: settings.arguments),
            builder: (context){
            return SecondScreen();
          });
        }
      } ,
    )
  );
}