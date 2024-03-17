import 'package:flutter/material.dart';
import 'package:kamp/pages/ana_sayfa.dart';
import 'package:kamp/pages/event_ekle.dart';
import 'package:kamp/pages/yerler_sayfa.dart';

class Etkinlik_Page extends StatefulWidget {
  const Etkinlik_Page({super.key});

  @override
  State<Etkinlik_Page> createState() => _Etkinlik_PageState();
}

class _Etkinlik_PageState extends State<Etkinlik_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        const Positioned(
                          bottom: 7,
                          left: 70,
                          right: 70,
                          child: Text(
                            "RİDO CAMPİNG’TE 3 GECE ! ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.grey, size: 20),
                            Icon(Icons.star, color: Colors.grey, size: 20),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          child: Text(
                              "1-4 Nisan tarihlerinde gerçekleştireceğimiz, kamp etkinliğine hepiniz davetlisiniz! Rido Camping ile doğanın büyüleyici huzuruna hazır olun! Etkinlik 20 kişi ile sınırlıdır. Kamp alanında çadır, buzdolabı, otopark, ortak duş ve  tuvalet bulunmaktadır.",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 10,
                          indent: 100,
                          endIndent: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Column(
                              children: [
                                Text("İŞLETME HESABI"),
                                Text("Adı Soyadı: Derin Ilgaz"),
                                Text("İletişim: 05325458790"),
                                Text(
                                  "Rezervasyon için lütfen iletişime geçiniz.",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const BottomNavigation(),
          ],
        ),
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
              color: const Color(0xFF23DB4F),
              onPressed: () {},
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
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Etkinlik_Page()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
