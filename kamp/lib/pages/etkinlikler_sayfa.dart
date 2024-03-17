import 'package:flutter/material.dart';
import 'package:kamp/pages/ana_sayfa.dart';
import 'package:kamp/pages/event_ekle.dart';
import 'package:kamp/pages/yerler_sayfa.dart';

class Etkinlikler_page extends StatefulWidget {
  const Etkinlikler_page({super.key});

  @override
  State<Etkinlikler_page> createState() => _Etkinlikler_pageState();
}

class _Etkinlikler_pageState extends State<Etkinlikler_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
          BottomNavigation(),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Event_ekle_pages()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Ana_Pages()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.map_rounded),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Yerler_page()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.campaign),
              iconSize: 30,
              color: const Color(0xFF23DB4F),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
