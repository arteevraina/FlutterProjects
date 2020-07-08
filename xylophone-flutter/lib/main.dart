import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey(Color colour, int noteNum) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(Colors.purple , 1),
              buildKey(Colors.indigo, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.orange, 6),
              buildKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
