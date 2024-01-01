import 'package:flutter/material.dart';

class SelectedForYou extends StatelessWidget {
  SelectedForYou({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = [
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
                    Image.network(
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
