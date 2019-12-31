import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			theme: ThemeData(
				primarySwatch: Colors.amber, 
				accentColor: Colors.deepPurple
			),
			home: Scaffold(
				backgroundColor: Colors.green,
				appBar: AppBar(title: Text("Safe Area Widget")),
				body: SafeArea(
					child: Center(
						child: Padding(
							padding: const EdgeInsets.all(16.0),
							child: Text(
								"The SafeArea widget is helpful to show the content" +
										"on the screen with hiding any text due to notches or curved screen." +
										"So SafeArea widget helps to show content in the relevant area and keep content intact on screen.",
								style: TextStyle(fontSize: 24.0, color: Colors.white),
							),
						),
					),
				)
			),
		);
	}
}
