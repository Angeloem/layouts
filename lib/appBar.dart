import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(new AppBarState());

class AppBarState extends StatefulWidget {
	@override
	_MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<AppBarState> {
	String _title = "Emmas App Bar";
	String _myState = 'jujju';
	void iconClicked() {
		setState(() {
		  _myState = 'lapatullah';
		});
		print("icon");
	}
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
		title: _title,
		home: new Scaffold(
			appBar: new AppBar(
				actions: <Widget>[
					new IconButton(icon: new Icon(Icons.menu), onPressed: () => iconClicked()),
					new IconButton(icon: new Icon(Icons.create), onPressed: () => iconClicked()),
					new IconButton(icon: new Icon(Icons.credit_card), onPressed: () => iconClicked()),
				],
				title: new Text(_title, style: new TextStyle(
					textBaseline: TextBaseline.ideographic
				),),
			),
			body: new Container(
				child:
				new Center(
					child: new Column(
						children: <Widget>[
							new Text(_myState),
						],
					),
				),
			),
		),
	);
  }
}