import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options= ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Componets Temp'),
        ),
        body: ListView(
          //children: _crearItems(),
          children: _crearItemsCorto(),
        ),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)
          ..add(Divider());
    }
    return list;

  }
  List<Widget> _crearItemsCorto(){

    var widgets = options.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('subtitle'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );

    }).toList();

    return widgets;

  }

}