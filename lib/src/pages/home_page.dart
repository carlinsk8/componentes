import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/pages/alert.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    //print( menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarDate(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

        
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];
    data.forEach((opt){
      final widgetemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blueAccent),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          /* final route = MaterialPageRoute(
            builder: (context)=> AlertPage()
          );
          Navigator.push(context, route); */


        },
      );
      opciones..add(widgetemp)
              ..add(Divider());
    });
    return opciones;
  }

}