import "package:flutter/material.dart";
import "package:audioplayers/audio_cache.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final sound = AudioCache();
    sound.play("note$soundNumber.wav");
  }

  Expanded buildKey({int playSoundNumber, MaterialColor color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        padding: EdgeInsets.all(50.0),
        onPressed: () {
          playSound(playSoundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("XYLOPHONE"),
          backgroundColor: Colors.blueGrey
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(playSoundNumber: 1, color: Colors.red),
            buildKey(playSoundNumber: 2, color: Colors.orange),
            buildKey(playSoundNumber: 3, color: Colors.yellow),
            buildKey(playSoundNumber: 4, color: Colors.teal),
            buildKey(playSoundNumber: 5, color: Colors.green),
            buildKey(playSoundNumber: 6, color: Colors.blue),
            buildKey(playSoundNumber: 7, color: Colors.purple),
          ],
        )),
      ),
    ));
  }
}
