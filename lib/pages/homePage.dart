import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            ),
          ),
      body:Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                child: Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child:Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.green,
                                ),
                                child: Center(
                                  child: Text("Tout",
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Text("Musique",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Text("Podcast",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Text("Livre audio",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text("C",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                )
            ),
            Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Concu pour ChrisKazang",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("Vos artistes préférés",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("Concu pour ChrisKazang",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("Concu pour ChrisKazang",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.green,
                            ),
                            Text("Salé",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                            Text("Niska",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      );

  }
}
