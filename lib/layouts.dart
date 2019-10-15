import 'package:flutter/material.dart';

void main() {
	runApp(
		new Center(
			child: MyApp(),
		)
	);
}

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
		title: "Intro",
		home: new Scaffold(
			appBar: new AppBar(
				title: Text(
					"Intro",
					textAlign: TextAlign.center,
				),
			),
			body: new Center(
				child: new RaisedButton(
					onPressed: () => print("clicked"),
					color: Colors.blue,
					child: new Text("press me"),
				),
			),
		),
	);
  }
}
