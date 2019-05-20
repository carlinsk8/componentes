import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/home_page.dart';





final rutas = <String, WidgetBuilder>{
  '/' : (BuildContext context) => HomePage(),
  'alert' : (BuildContext context) => AlertPage(),
  'avatar' : (BuildContext context) => AvatarPage(),
};