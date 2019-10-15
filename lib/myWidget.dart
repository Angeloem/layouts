import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ema extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
		padding: const EdgeInsets.all(3.0),
		child: new Column(
			children: <Widget>[
				new Text('first'),
				new Text('second'),
				new Text(
					'third',
					textDirection: TextDirection.ltr,
					textWidthBasis: TextWidthBasis.longestLine,
				),
			],
		),
	);
  }
	
}