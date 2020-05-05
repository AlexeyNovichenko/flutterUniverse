import "package:flutter/material.dart";
import "package:audioplayers/audio_cache.dart";

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
              child: Center(child: FlatButton(onPressed: (){
				  final player = AudioCache();
				  player.play("note1.wav");
				}, 
				child: Text("Click me")))),
        	),
      	),
    ));
  }
}
