import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void soundPlayer(int sound) {
    final player = new AudioCache();
    player.play('note$sound.wav');
  }

  Expanded bulidKey({Color color, int sound}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        color: color,
        onPressed: () {
          soundPlayer(sound);
        },
        child: Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // ignore: deprecated_member_use
            children: <Widget>[
              bulidKey(color: Colors.red, sound: 1),
              bulidKey(color: Colors.orange, sound: 2),
              bulidKey(color: Colors.yellow, sound: 3),
              bulidKey(color: Colors.green, sound: 4),
              bulidKey(color: Colors.cyan, sound: 5),
              bulidKey(color: Colors.blue, sound: 6),
              bulidKey(color: Colors.purpleAccent, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
