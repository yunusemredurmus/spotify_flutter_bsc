import 'package:flutter/material.dart';

class LibraryMusic extends StatefulWidget {
  const LibraryMusic({Key? key}) : super(key: key);

  @override
  _LibraryMusicState createState() => _LibraryMusicState();
}

class _LibraryMusicState extends State<LibraryMusic> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["Çalma Listeleri", "Sanatçılar", "Albümler"];

    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          SizedBox(height: 36),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Müzik",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Podcastler",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.60),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < categories.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = i;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: selectedIndex == i
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          categories[i],
                          style: TextStyle(
                            color: selectedIndex == i
                                ? Colors.white
                                : Colors.white.withOpacity(.60),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
