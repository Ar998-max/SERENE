import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CalmingTunes extends StatefulWidget {
  const CalmingTunes({Key? key}) : super(key: key);

  @override
  State<CalmingTunes> createState() => _CalmingTunes();
}

class _CalmingTunes extends State<CalmingTunes> {
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 221, 226),
      body: Column(
        children: [
          const Text(
            'CalmingTunes',
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 3,
                  color: Color.fromARGB(104, 0, 0, 0),
                ),
              ],
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 50,),
          _musicWidget("Music 1", "audio/calmingTunes/1.mp3"),
          const SizedBox(height: 50,),
          _musicWidget("Music 2", "audio/calmingTunes/1.mp3"),
          const SizedBox(height: 50,),
          _musicWidget("Music 3", "audio/calmingTunes/1.mp3"),
        ]
      )
    );
  }

  _musicWidget(songName, songFileName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            height: 100,
            width: 600,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Center(
              child: Text(
                songName,
                textScaleFactor: 2
              ),
            ),
          ),
          onTap: () async {
            playTunes(songFileName);
          }
        ),
      ]
    );
  }

  void playTunes(filename) {
    final player = AudioCache();
    player.play(filename);
  }
}

