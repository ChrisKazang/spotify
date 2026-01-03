import 'package:flutter/material.dart';
import 'package:spotify/login/LoginPage2.dart';
import 'package:spotify/login/bienvenuePage.dart';
import 'package:spotify/login/creeCompte.dart';
import 'package:spotify/pages/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                            "Inscrivez-vous\n"
                                "pour\n"
                                "commencer à\n"
                                "écouter"
                            ,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => CreeCompte(),
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
                          height: 20,
                        ),
                        Text("Vous avez déjà un compte ?",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => LoginPage2(),
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
                            child: Text("Connexion",
                              style: TextStyle(
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
