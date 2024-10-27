import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// void main() => runApp(XylophoneApp());
//
// class XylophoneApp extends StatelessWidget {
//   void playSound(int ID) {
//     final player = AssetsAudioPlayer();
//     player.open(
//       Audio('assets/note$ID.wav'),
//     );
//   }
//
//   Expanded buildKey(Color color, int key) {
//     return Expanded(
//       child: TextButton(
//         style: TextButton.styleFrom(
//             shape:
//                 const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
//             backgroundColor: color),
//         onPressed: () {
//           playSound(key);
//         },
//         child: Text(""),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildKey(Colors.purple, 1),
//               buildKey(Colors.indigo, 2),
//               buildKey(Colors.blue, 3),
//               buildKey(Colors.green, 4),
//               buildKey(Colors.yellow, 5),
//               buildKey(Colors.red, 6),
//               buildKey(Colors.orange, 7),
//             ],
//           ),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'dart:async';
//
void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('assets/note$soundNumber.wav'),
    );
  }

  buildKey(Color color, int ID) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(ID);
          },
          child: Text(""),
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
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
