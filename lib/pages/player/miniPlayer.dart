import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify/pages/player/musicPlayer.dart';

import '../../contenu/couleur.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  bool _isExpanded = false;
  final double _progress = 0.3;
  bool liked = false;
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      left: 10,
      right: 10,
      bottom: 70,
      height: _isExpanded? 400 : 60,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_isExpanded ? 20 : 12),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              color: Colors.white.withOpacity(0.1),
              child: _isExpanded ? _fullPlayer() : _miniPlayerContent(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _miniPlayerContent() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          color: Colors.green,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Titre du morceau",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)
              ),
              Text("Artiste",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12
                  )
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.play_arrow, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _fullPlayer() {
    return SingleChildScrollView(

      child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ink(
                  child: Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Column(
                  children: [
                    Text("PLAYING FROM YOUR LIBRARY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6,
                      ),
                    ),
                    Text("Liked Songs",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 7,
                      ),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.open_in_full,
                    color: Colors.white,),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>MusicPlayer()
                      )
                    );
                  },
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.orange
                      ]
                  )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kwaku the Traveller",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text("Black Sherif",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        liked = !liked;
                        liked ? snackBar(context):snackBar2(context);
                      });
                    },
                    child: liked ? Icon(Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ) :Icon(Icons.favorite_border,
                      color: Colors.white,
                      size: 30,
                    )
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: 0.6,
              minHeight: 3,
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              backgroundColor: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(Icons.music_note,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.skip_previous,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      playing = !playing;
                    });
                  },
                  child: playing? Icon(Icons.pause_circle,
                    color: Colors.white,
                    size: 80,
                  ) :Icon(Icons.play_circle,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.skip_next,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.repeat,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

void snackBar(BuildContext context){
  final snackBar = SnackBar(
    duration: Duration(
        milliseconds: 400
    ),
    content: Text("Ajouter dans la playList",
      style: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold
      ),
    ),
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
void snackBar2(BuildContext context){
  final snackBar = SnackBar(
    duration: Duration(
        milliseconds: 400
    ),
    content: Text("Retirer dans la playList",
      style: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold
      ),
    ),
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
