import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio('assets/audios/note$soundNumber.wav'),
    );
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: Hexcolor(''),
        onPressed: () {
          playSound(soundNumber);
        },
        child: buildKey(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: Text(
            'Solfege',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Hexcolor>[
                    Hexcolor('#E64A39'),
                    Hexcolor('#E97439'),
                    Hexcolor('#EDD157'),
                    Hexcolor('#65ED99'),
                    Hexcolor('#5F8BE9'),
                    Hexcolor('#6F1BC6'),
                    Hexcolor('#c31bc6'),
                    Hexcolor('#c61b79'),
                  ]),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Hexcolor('#E64A39'), soundNumber: 1),
              buildKey(color: Hexcolor('#E97439'), soundNumber: 2),
              buildKey(color: Hexcolor('#EDD157'), soundNumber: 3),
              buildKey(color: Hexcolor('#65ED99'), soundNumber: 4),
              buildKey(color: Hexcolor('#5F8BE9'), soundNumber: 5),
              buildKey(color: Hexcolor('#6F1BC6'), soundNumber: 6),
              buildKey(color: Hexcolor('#c31bc6'), soundNumber: 7),
              buildKey(color: Hexcolor('#c61b79'), soundNumber: 8),
            ],
          ),
        ),
      ),
    );
  }
}
