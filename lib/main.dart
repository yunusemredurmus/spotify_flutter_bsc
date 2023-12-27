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
      "image": "assets/images/IMG_2879.png",
    },
    {
      "id": 2,
      "name": "Como Estrellas Radio",
      "image": "assets/images/IMG_2879.png"
    },
    {"id": 3, "name": "Todo Indie", "image": "assets/images/IMG_2879.png"},
    {
      "id": 4,
      "name": "Descubrimiento semanal",
      "image": "assets/images/IMG_2879.png"
    },
    {"id": 5, "name": "Éxitos España", "image": "assets/images/IMG_2879.png"},
    {
      "id": 6,
      "name": "Música sin copyright",
      "image": "assets/images/IMG_2879.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: const [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: null,
              iconSize: 30.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                                  child: Image.asset(
                                    dataList[index]["image"],
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
              PopularSong()
            ],
          ),
        ),
      ),
    );
  }
}
