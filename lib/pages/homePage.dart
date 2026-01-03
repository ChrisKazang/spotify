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
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Tab1'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Tab2'),
      const BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Tab3'),

    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
        backgroundColor: Colors.black,
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
                                height: 40,
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
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.4),
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
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.4),
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
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(80),
                                  color: Colors.white.withOpacity(0.4),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Padding(padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.home_filled,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text("Accueil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text("Recherche",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.library_music_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text("Bibliothèque",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Image.asset('assets/images/spotifylogo1.png',
                      height: 30,
                    ),
                    Text("Premium",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text("Créer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
      );

  }
}
