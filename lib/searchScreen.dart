import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/search.dart';

class SearchScreenMain extends StatelessWidget {
  SearchScreenMain({Key? key});

  List<Map<String, dynamic>> boxData = [
    {
      "id": 1,
      "color": 0xFFEC6D45,
      "image": "https://picsum.photos/250?image=20",
      "name": "Albüm 1"
    },
    {
      "id": 2,
      "color": 0xFFE39C40,
      "image": "https://picsum.photos/250?image=21",
      "name": "Albüm 2"
    },
    {
      "id": 3,
      "color": 0xFFC4E6C4,
      "image": "https://picsum.photos/250?image=22",
      "name": "Albüm 3"
    },
    {
      "id": 4,
      "color": 0xFFD8383B,
      "image": "https://picsum.photos/250?image=23",
      "name": "Albüm 4"
    }
  ];
  List<Map<String, dynamic>> boxData2 = [
    {
      "id": 1,
      "color": 0xFFEC6D45,
      "image": "https://picsum.photos/250?image=30",
      "name": "Albüm 1"
    },
    {
      "id": 2,
      "color": 0xFFE39C40,
      "image": "https://picsum.photos/250?image=30",
      "name": "Albüm 2"
    },
    {
      "id": 3,
      "color": 0xFFC4E6C4,
      "image": "https://picsum.photos/250?image=33",
      "name": "Albüm 3"
    },
    {
      "id": 4,
      "color": 0xFFD8383B,
      "image": "https://picsum.photos/250?image=35",
      "name": "Albüm 4"
    }
  ];

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: focusNode.hasFocus
          ? Container()
          : Column(children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Merhaba,",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ),
                      );
                    },
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      hintText: "Sanatçılar, şarkılar veya podcastler",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.60),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(.60),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Son aramalar",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 164 / 88,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 16,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(boxData[index]["color"]),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                boxData[index]["name"],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Image.network(
                                boxData[index]["image"],
                                fit: BoxFit.cover,
                                height: 76,
                                width: 80,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Senin için önerilen podcastler",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 32),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 164 / 88,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 16,
                  ),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(boxData2[index]["color"]),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  boxData2[index]["name"],
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Container(
                                  width: 80,
                                  height: 76,
                                  child: Image.network(
                                    boxData2[index]["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ]),
    );
  }
}
