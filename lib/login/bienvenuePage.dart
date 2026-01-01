import 'package:flutter/material.dart';
import 'package:spotify/login/LoginPage.dart';

class BienvenuePage extends StatefulWidget {
  const BienvenuePage({super.key});

  @override
  State<BienvenuePage> createState() => _BienvenuePageState();
}

class _BienvenuePageState extends State<BienvenuePage> {
  bool isClic = false;
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
                        Text(
                          "Des millions de titres.\n "
                              "Gratuits sur Spotify.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_)=>LoginPage()
                                  )
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
                                child: Text("S'inscrire gratuitement",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),
                                ),
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
                                child: Text("Se connecter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),
                                ),
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
