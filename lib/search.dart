import 'dart:math';

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, dynamic>> dataList = [];
  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 50; i++) {
      dataList.add({
        "id": Random().nextInt(100) + 1,
        "name": "Müzik ${i}",
        "image": "https://picsum.photos/250?image=${i}",
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        Column(
          children: [
            SizedBox(height: 16),
            TextField(
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
          ],
        ),
        SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  dataList[index]["image"],
                  width: 50,
                  height: 50,
                ),
                title: Text(
                  dataList[index]["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.white.withOpacity(.20),
                height: 8,
              );
            },
            itemCount: dataList.length,
          ),
        ),
      ]),
    );
  }
}
