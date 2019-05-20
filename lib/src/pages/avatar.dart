import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO8kdJUmSV7j-2iZDD7XFTsUIGe4SCLB6cz8mvuJpLpn0z6JEjEg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO8kdJUmSV7j-2iZDD7XFTsUIGe4SCLB6cz8mvuJpLpn0z6JEjEg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(seconds: 1),
        ),
      ),
    );
  }
}