import 'package:flutter/material.dart';
import 'package:spotify/pages/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Pass2Compte extends StatefulWidget {
  final TextEditingController emails;
  Pass2Compte({super.key ,required this.emails});

  @override
  State<Pass2Compte> createState() => _Pass2CompteState();
}

class _Pass2CompteState extends State<Pass2Compte> {
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool _passValide = false;
  void _checkPassword(String value) {
    setState(() {
      _passValide = value.length >= 10;
    });
  }
  void next(){
    var pass = passwordController.text;
    if (pass.length>=10){
      setState(() {
        _passValide = true;
      });
    }
  }
  Future<void> login() async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(
        email: widget.emails.text.trim(),
        password: passwordController.text,
      );

      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? "Erreur lors de la connexion"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Se connecter",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
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
        child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10
            ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Saisissez votre\n"
                            "mot de passe",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                        ),
                      ),
                    ),
                    TextField(
                      onChanged: _checkPassword,
                      controller: passwordController,
                      cursorColor: Colors.white,
                      obscureText: _obscureText,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[900],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            }
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Utilisez au moins 10 caractères.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        onTap: (){
                          login();
                          User? user = FirebaseAuth.instance.currentUser;
                          if (user != null) {
                            print("Utilisateur connecté : ${user.email} - UID : ${user.uid}");
                          } else {
                            print("Pas de connexion");
                          }
                          _passValide? Navigator.push(context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
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
                          ) : null;
                        },
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              color: _passValide? Colors.white : Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(80)
                          ),
                          child: Padding(padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text("Suivant",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                    )
                  ]
              ),
            )
        ),
      ),
    );
  }
}