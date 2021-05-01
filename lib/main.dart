import 'package:flutter/material.dart';

void main(){

  runApp(new MaterialApp(
    home:new MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  createState() => new _State();

}

class _State extends State<MyApp> {

  String _value = '';
  bool _checkValue1 =  false;
  bool _checkValue2 =  false;

  void _checkValue1Changed(bool value) {
    setState( () => _checkValue1 = value);
  }

  void _checkValue2Changed(bool value) {
    setState( () => _checkValue2 = value);
  }


  void _onChange(String value) {

    setState(() {
      _value = 'Change: ${value}';
    });

  }

  void _onSubmit(String value) {

    setState(() {
      _value = 'Submit: ${value}';
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
       title: new Text('Name Here'),
     ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new TextField(
                decoration: new InputDecoration(
                  labelText:'Hello',
                  hintText:'Hint',
                  icon: new Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus:true,
                keyboardType: TextInputType.number,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
              new Checkbox(value: _checkValue1, onChanged: _checkValue1Changed),
              new CheckboxListTile(value: _checkValue2, onChanged: _checkValue2Changed,
              title: new Text("Hello World"),
              controlAffinity:ListTileControlAffinity.leading,
                subtitle: new Text('Subtitle'),
                secondary: new Icon(Icons.archive),
                activeColor:Colors.red

              )

            ],
          )
        )
      ),
    );
  }
}




