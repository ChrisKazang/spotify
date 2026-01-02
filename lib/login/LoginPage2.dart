import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'bienvenuePage.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => BienvenuePage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0); // Départ à droite
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child, // plus de FadeTransition
                  );
                },
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios_new,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black26
          ),
          child: Padding(padding: EdgeInsets.all(8),
            child: Column(
                children : [
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/spotifylogo1.png',
                          width: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Connexion à\n"
                                "Spotify",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        InkWell(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 65,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.mail_outline),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Continuez avec l'e-mail",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            splashColor: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 65,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 1
                                  )
                              ),
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/g.png',
                                        height: 25,
                                        width: 25,
                                      ),
                                      SizedBox(width: 5,),
                                      Text("Continuez avec google",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            splashColor: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 65,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 1
                                  )
                              ),
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/fb.png',
                                        height: 25,
                                        width: 25,
                                      ),
                                      SizedBox(width: 5,),
                                      Text("Continuez avec google",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Vous n'avez pas de compte ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    const begin = Offset(1.0, 0.0); // Départ à droite
                                    const end = Offset.zero;
                                    const curve = Curves.ease;

                                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                    return SlideTransition(
                                      position: animation.drive(tween),
                                      child: child, // plus de FadeTransition
                                    );
                                  },
                                )
                            );
                          },
                          child: Text("S'inscrire ?",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
          )
      ),
    );
  }
}
