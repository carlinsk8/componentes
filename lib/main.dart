import 'package:flutter/material.dart'; 
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Español
      ],
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getAppLocationRoutes(),
      onGenerateRoute: (RouteSettings settings){

        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}