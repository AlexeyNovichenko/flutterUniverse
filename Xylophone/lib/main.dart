import "package:flutter/material.dart";
import "package:audioplayers/audio_cache.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final sound = AudioCache();
    sound.play("note$soundNumber.wav");
  }

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
            child: Column(
          children: [
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
                child: Text("1")),
            FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
                child: Text("2")),
            FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
                child: Text("3")),
            FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
                child: Text("4")),
            FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                },
                child: Text("5")),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
                child: Text("6")),
            FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
                child: Text("7")),
          ],
        )),
      ),
    ));
  }
}
