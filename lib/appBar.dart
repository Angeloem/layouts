import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
	@override
	_MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
	String _title = "Emmas App Bar";
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
		title: _title,
		home: new Scaffold(
			appBar: new AppBar(
				title: new Text(_title),
			),
			body: new Container(
				child: new Column(
					children: <Widget>[
						new Text("Whoopse")
					],
				),
			),
		),
	);
  }
}