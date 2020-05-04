import "package:flutter/material.dart";
import "package:english_words/english_words.dart";


void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return (MaterialApp(
      		theme: ThemeData.dark(),
      		debugShowCheckedModeBanner: false,
      		home: Scaffold(
			appBar: AppBar(
          		title: Text("Xylophone App"),
          		backgroundColor: Colors.lightBlueAccent,
        	),
			body: SafeArea(
          		child: Container(
					  child: Center(child: Text(nouns.last))
				  ),
        	),
		),
    ));
  }
}
