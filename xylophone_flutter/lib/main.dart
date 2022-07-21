import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound (int? noteNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Widget buildKey({Color? cardColor, int? noteNumber }){
    return Expanded(
      child: Container(
        color: cardColor,
        child: TextButton(
          onPressed: () => playSound(noteNumber),
          child: const Icon(
              Icons.music_note,
            color: Colors.grey,
          ),
        ),
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
            children: [
              buildKey(cardColor: Colors.red, noteNumber: 1),
              buildKey(cardColor: Colors.orange, noteNumber: 2),
              buildKey(cardColor: Colors.yellow, noteNumber: 3),
              buildKey(cardColor: Colors.green[800], noteNumber: 4),
              buildKey(cardColor: Colors.teal, noteNumber: 5),
              buildKey(cardColor: Colors.blue, noteNumber: 6),
              buildKey(cardColor: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
