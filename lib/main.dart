import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void playSound(String sound) {
    AudioCache player = AudioCache();
    player.play(sound);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isDarkMode ? Colors.black : Colors.red,
          title: Text('Drum Music'),
          actions: [
            isDarkMode
                ? Align(
                    alignment: Alignment.center,
                    child: Text('Dark Mode'),
                  )
                : Text(''),
            IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon: Icon(Icons.dark_mode),
            ),
          ],
        ),
        body: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
            ),
          ),
          child: getBody(),
        ),
      ),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Expanded(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('c1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('c2.wav');
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
                    playSound('h1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('h2.wav');
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
                    playSound('k1.wav');
                  },
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('k2.wav');
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
