import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophonePage(),
        ),
      ),
    );
  }
}

Widget xylophoneTile({required Color tileColor, required int soundNumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(tileColor)),
      onPressed: () {
        print('tile$soundNumber');
        // import in the begining of the file

        // add it to your class as a static member
        // or as a local variable
        // final player = AudioCache();

        // call this method when desired
        // player.play('note$soundNumber.mp3');
      },
      child: Container(),
    ),
  );
}

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        xylophoneTile(tileColor: Colors.red, soundNumber: 1),
        xylophoneTile(tileColor: Colors.orange, soundNumber: 2),
        xylophoneTile(tileColor: Colors.yellow, soundNumber: 3),
        xylophoneTile(tileColor: Colors.green, soundNumber: 4),
        xylophoneTile(tileColor: Colors.blue, soundNumber: 5),
        xylophoneTile(tileColor: Colors.indigo, soundNumber: 6),
        xylophoneTile(tileColor: Colors.purple, soundNumber: 7),
      ],
    );
  }
}
