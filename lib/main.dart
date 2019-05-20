import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
      },
      onGenerateRoute: (RouteSettings settings){

        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}