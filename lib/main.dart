import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('drum music'),
        ),
        body: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
            ),
          ),
          child: Container(
            child: getBody(),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('c1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('c2.wav');
                  },
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('h1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('h2.wav');
                  },
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('k1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('k2.wav');
                  },
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
