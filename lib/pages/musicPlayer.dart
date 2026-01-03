import 'package:flutter/material.dart';
import 'package:spotify/contenu/couleur.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final double _progress = 0.3;
  bool liked = false;
  bool playing = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: [
              ?Colors.grey[800],
              ?Colors.grey[800],
              Colors.black,
            ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
        ),
        body: Padding(padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
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
                  PopupMenuButton(
                    color: Colors.grey,
                      iconColor: Colors.white,
                      itemBuilder: (context)=>[
                        PopupMenuItem(
                            child: Icon(Icons.share,
                              color: Colors.white,
                            )
                        )
                      ]
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 320,
                width: double.infinity,
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
                height: 80,
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
                          fontSize: 15
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text("Black Sherif",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12
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
                      color: Couleur.couleurPrimaire,
                      size: 30,
                    ) :Icon(Icons.favorite_border,
                      color: Colors.white,
                      size: 30,
                    )
                  )
                ],
              ),
              SizedBox(
                height: 20,
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
      ),
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