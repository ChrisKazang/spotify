import 'package:flutter/material.dart';

class CreeCompte extends StatefulWidget {
  const CreeCompte({super.key});

  @override
  State<CreeCompte> createState() => _CreeCompteState();
}

class _CreeCompteState extends State<CreeCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Créer un compte",
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
                              "adresse e-mail\n",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28
                          ),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(padding: EdgeInsets.all(8),
                            child:  TextField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),
                          )
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
                          child: Container(
                            height: 70,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
