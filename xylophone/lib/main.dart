import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void selectAudioNbr(int? audioNbr) {
    final player = AudioCache();
    player.play('note$audioNbr.wav');
  }

  Expanded displayPiano({Color? color, int? audioNbr}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          selectAudioNbr(audioNbr);
        },
        color: color,
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophon Instrument App',
              style: TextStyle(
                fontSize: 30,
              )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              displayPiano(color: Colors.red, audioNbr: 1),
              displayPiano(color: Colors.orange, audioNbr: 2),
              displayPiano(color: Colors.yellow, audioNbr: 3),
              displayPiano(color: Colors.green, audioNbr: 4),
              displayPiano(color: Colors.blue, audioNbr: 5),
              displayPiano(color: Colors.indigo, audioNbr: 6),
              displayPiano(color: Colors.purple, audioNbr: 7),
            ],
          ),
        ),
      ),
    );
  }
}
