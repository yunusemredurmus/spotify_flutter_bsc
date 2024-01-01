import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/ddaa.dart';
import 'package:spotify_flutter_bsc/ppp.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key});

  List<Map<String, dynamic>> dataList = [
    {
      "id": 1,
      "name": "Música sin copyright",
      "image": "https://picsum.photos/250?image=9",
    },
    {
      "id": 2,
      "name": "Como Estrellas Radio",
      "image": "https://picsum.photos/250?image=13"
    },
    {
      "id": 3,
      "name": "Todo Indie",
      "image": "https://picsum.photos/250?image=7"
    },
    {
      "id": 4,
      "name": "Descubrimiento semanal",
      "image": "https://picsum.photos/250?image=54"
    },
    {
      "id": 5,
      "name": "Éxitos España",
      "image": "https://picsum.photos/250?image=10"
    },
    {
      "id": 6,
      "name": "Música sin copyright",
      "image": "https://picsum.photos/250?image=19"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 213, 69, 117),
                  Colors.black,
                ],
                radius: 4,
                center: Alignment.topLeft,
              ),
            ),
          ),
          title: Text(
            "Logo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: null,
              iconSize: 30.0,
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  color: Colors.black,
                  child: Row(
                    children: [
                      Text(
                        "Senin İçin!",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 167 / 56,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                border: Border.all(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.network(
                                      dataList[index]["image"],
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 100,
                                    child: Text(
                                      dataList[index]["name"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 10),
                SelectedForYou(),
                PopularSong(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Ara',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: 'Kütüphane',
            ),
          ],
          currentIndex: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: (index) {
            // Handle item tap
          },
        ),
      ),
    );
  }
}
