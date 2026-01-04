import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify/pages/homePage.dart';
import 'package:spotify/pages/player/miniPlayer.dart';
import 'package:spotify/pages/recherchePage.dart';
import 'package:spotify/pages/bibliothequePage.dart';

import 'contenu/couleur.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  bool liked = false;

  final List<Widget> _pages = const [
    HomePage(),
    RecherchePage(),
    BibliothequePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true, // Important pour que le mini player flotte

      body: Stack(
        children: [
          _pages[_currentIndex],
          MiniPlayer()
        ],
      ),


      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.0),
              Colors.black.withOpacity(0.8),
              Colors.black,
            ],
          ),
        ),
        child:Theme(
          data:Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, size: 30),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30),
                label: 'Recherche',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music, size: 30),
                label: 'Bibliothèque',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
