import 'package:flutter/material.dart';

class SelectedForYou extends StatelessWidget {
  SelectedForYou({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "name": "Música sin copyright",
      "image": "assets/images/IMG_2879.png"
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Önerilenler",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
            width: 0,
          ),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      data[index]["image"],
                      width:
                          112, // İstenirse resmin genişliği ve yüksekliği ayarlanabilir.
                      height: 112,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      data[index]["name"],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                );
              },
              itemCount: data.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
