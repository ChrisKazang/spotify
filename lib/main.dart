import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spotify/mainPage.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify/pages/homePage.dart';
import 'package:spotify/pages/player/musicPlayer.dart';
import 'login/bienvenuePage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MyApp()
  );
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Algo',
        home: MainPage()
      /*seenWelcome? LoginPage() : BienvenuePage(),*/
    );
  }
}*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text("Play"),
            onPressed: () async {
              final player = AudioPlayer();
              await player.setAsset(
                  'assets/audio/song.mp3');
              await player.play();
              await player.pause();
            },
          ),
        ),
      ),
    );
  }
}

