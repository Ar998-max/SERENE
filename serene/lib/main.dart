import 'package:flutter/material.dart';

import 'dart:async';

import 'welcome.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen()); // define it once at root level.
  }
}

class SplashScreen extends StatefulWidget {  /* splash screen from here*/
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {  /*its duration*/
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {  /* its appearance*/
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 72, 172, 240),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 300,
                      width: 800,
                      child: Image.network(
                          'https://media.discordapp.net/attachments/1113666246123200522/1114954114393190521/Serene-removebg-preview1.png')),
                  Text(
                    'Healthy Mind, Healthy life',
                    style: TextStyle(
                        color: Color.fromARGB(255, 89, 66, 54),
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  )
                ]),
          ],
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'BMI Calculator',
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
