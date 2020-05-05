// import 'dart:html';
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
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#E64A39'),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(
                    'Re',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#E97439'),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(
                    'Re',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#EDD157'),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(
                    'Mi',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#65ED99'),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(
                    'Fa',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#5F8BE9'),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(
                    'So',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#6F1BC6'),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(
                    'La',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#c31bc6'),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(
                    'Ti',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Hexcolor('#c61b79'),
                  onPressed: () {
                    playSound(8);
                  },
                  child: Text(
                    'Do',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
