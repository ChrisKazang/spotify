/*import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:[
                Color(0xFF010210),
                Color(0xFF050949)
              ]
          )
      ),
      child:  Stack(
        children: [
          Image.asset('assets/images/forme.png',
            alignment: Alignment.bottomCenter,
            height: double.infinity,
            width: double.infinity,
          ),
          GlassmorphicContainer(
            width: double.infinity,
            height: double.infinity,
            borderRadius: 0,       // pas de coins arrondis
            blur: 50,              // flou
            alignment: Alignment.center,
            border: 0,             // pas de bordure
            linearGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent, // transparent pour ne garder que le flou
                Color(0xFF050949).withOpacity(0.9)
              ],
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
              ],
            ),
          ),
          Scaffold(
              appBar: AppBar(
                  toolbarHeight: 2,
                  backgroundColor: Color(0xFF010210).withOpacity(0.1)
              ),
              backgroundColor: Colors.transparent,
              body:SingleChildScrollView(
                child: Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 130,),
                      Text("Connexion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 100,),
                      Padding(padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Entrez votre email",
                                          prefixIcon: Icon(Icons.mail_outline)
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 30,),
                            Text("Mot de passe",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Entrez votre mot de passel",
                                          prefixIcon: Icon(Icons.lock_outline)
                                      ),
                                    ),
                                  )
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),

    );

  }
}*/
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.transparent,
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
                    height: 150,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
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
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
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
                                      Icon(Icons.g_mobiledata,
                                        color: Colors.white,
                                        size: 45,
                                      ),

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
