import 'package:flutter/material.dart';
import 'package:spotify/login/passCompte.dart';

class ConectCompte extends StatefulWidget {
  const ConectCompte({super.key});

  @override
  State<ConectCompte> createState() => _ConectCompteState();
}

class _ConectCompteState extends State<ConectCompte> {
  final TextEditingController emailController = TextEditingController();
  bool _EmailValid = false;
  void _checkEmail(String value) {
    final emailRegex =
    RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    setState(() {
      _EmailValid = emailRegex.hasMatch(value);
    });
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
                            "adresse e-mail",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: emailController,
                      onChanged: _checkEmail,
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
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Vous devrez confirmez cette adresse par la suite",
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
                        onTap: (){_EmailValid? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PassCompte(emails: emailController),
                          ),
                        ): null;
                        },
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              color: _EmailValid? Colors.white : Colors.white.withOpacity(0.3),
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
