import 'package:flutter/material.dart';

class PopularSong extends StatelessWidget {
  PopularSong({Key? key}) : super(key: key);

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
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage("assets/images/populer.png"),
                  width: 80,
                  height: 80,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popüler Şarkılar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Senin İçin Seçtiklerimiz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 200, // Set the fixed height for the ListView
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Column(
                      children: [
                        Image.network(
                          dataList[index]["image"],
                          width: 150, // Set the width of each image
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          dataList[index]["name"],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
