import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';

Map<String, WidgetBuilder> getAppLocationRoutes(){

  return <String, WidgetBuilder>{
    '/'     : (BuildContext context) => HomePage(),
    'alert' : (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card'  : (BuildContext context) => CardPage(),
  };
  
}

