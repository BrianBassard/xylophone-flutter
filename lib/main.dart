import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note1.wav'),
                );
              },
              child: Text('Do'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note2.wav'),
                );
              },
              child: Text('Re'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note3.wav'),
                );
              },
              child: Text('Mi'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note4.wav'),
                );
              },
              child: Text('Fa'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note5.wav'),
                );
              },
              child: Text('So'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note6.wav'),
                );
              },
              child: Text('La'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note7.wav'),
                );
              },
              child: Text('Ti'),
            ),
            FlatButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio('assets/audios/note8.wav'),
                );
              },
              child: Text('Do'),
            ),
          ],
        )),
      ),
    );
  }
}
