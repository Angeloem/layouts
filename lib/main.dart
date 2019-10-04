import 'package:flutter/material.dart';

void main(){
	runApp(MaterialApp(
		title: 'Floating Action Button',
		home: TutorialHome,
	));
}

class TutorialHome extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
		appBar: AppBar(
			leading: IconButton(
				icon: Icon(Icons.menu),
				tooltip: 'Menu',
				onPressed: null,
			),
		),
	);
  }
}