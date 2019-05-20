import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider =100.0;
  bool _blokearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwicht(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: '${_valorSlider.toInt()}',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 250.0,
      onChanged: _blokearCheck ? null :(valor){
        setState(() {
          _valorSlider=valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('http://pngimg.com/uploads/ironman/ironman_PNG66.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _blokearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _blokearCheck=valor;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _blokearCheck,
      onChanged: (valor){
        setState(() {
           _blokearCheck=valor;
        });
      },
    );
  }

  Widget _crearSwicht() {
    return SwitchListTile(
      title: Text('Bloquear Swicht'),
      value: _blokearCheck,
      onChanged: (valor){
        setState(() {
           _blokearCheck=valor;
        });
      },
    );
  }
}