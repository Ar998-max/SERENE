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
      appBar: AppBar(
        automaticallyImplyLeading: false,

        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: const Icon(Icons.arrow_back)
        ),
        backgroundColor: const Color.fromARGB(255, 111, 88, 75),
        title: const Text(
          'Serene',
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
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
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
          _musicWidget("Music 1", "audio/calmingTunes/1.mp3", Colors.blue),
          const SizedBox(height: 50,),
          _musicWidget("Music 2", "audio/calmingTunes/1.mp3", Colors.indigo),
          const SizedBox(height: 50,),
          _musicWidget("Music 3", "audio/calmingTunes/1.mp3", Colors.green),
        ]
      )
    );
  }

  _musicWidget(songName, songFileName, songColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            height: 100,
            width: 600,
            decoration: BoxDecoration(
              color: songColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))
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

