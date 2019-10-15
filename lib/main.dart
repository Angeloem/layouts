import 'package:flutter/material.dart';

void main(){
	runApp(MaterialApp(
		title: 'Floating Action Button', 
		home: TutorialHome(),
	));
}

class TutorialHome extends StatefulWidget {
	@override
	_TutorialHome createState() => _TutorialHome();
}

class _TutorialHome extends  State<TutorialHome>{
	int _counter = 0;
	
	void _increment() {
		setState(() {
		  _counter++;
		});
	}
	
	@override
	Widget build(BuildContext context) {
		return Row(
			children: <Widget>[
				RaisedButton(
					onPressed: _increment,
					child: Text('Increment'),
					color: Colors.yellow,
				),
				Text('Count: $_counter', style: TextStyle(
					fontSize: 46,
					fontStyle: FontStyle.normal,
					fontWeight: FontWeight.bold
				),),
			],
		);
	}
}