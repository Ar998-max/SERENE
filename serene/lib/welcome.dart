import 'package:flutter/material.dart';
import 'package:serene/chat.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _SereneState();
}

class _SereneState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 221, 226),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 111, 88, 75),
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Glad to See You Here!',
                  style: TextStyle(
                      color: Color.fromARGB(255, 89, 66, 54),
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                SizedBox(height: 80)
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 111, 88, 75),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(),
                    ),
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chat(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 111, 88, 75),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(),
                    ),
                    onTap: () async {},
                  ),
                ]),
            SizedBox(
              height: 10,
            )
          ]),
    );
  }
}
