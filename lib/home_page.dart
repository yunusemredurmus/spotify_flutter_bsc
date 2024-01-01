import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/ddaa.dart';
import 'package:spotify_flutter_bsc/ppp.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        gradient: RadialGradient(
          colors: [
            Color(0xFFA1546E),
            Colors.black,
          ],
          center: Alignment.topLeft,
          radius: .9,
          // begin: Alignment.topLeft,
          // end: Alignment.centerRight,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Row(
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
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 167 / 56,
                crossAxisSpacing: 9,
                mainAxisSpacing: 8,
              ),
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF282828),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          dataList[index]["image"],
                          width: 56,
                          height: 56,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            dataList[index]["name"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            SelectedForYou(),
            PopularSong(),
          ],
        ),
      ),
    );
  }
}
