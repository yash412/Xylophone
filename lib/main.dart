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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // ignore: deprecated_member_use
            children: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  soundPlayer(1);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  soundPlayer(2);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  soundPlayer(3);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  soundPlayer(4);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.cyan,
                onPressed: () {
                  soundPlayer(5);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  soundPlayer(6);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.purpleAccent,
                onPressed: () {
                  soundPlayer(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
