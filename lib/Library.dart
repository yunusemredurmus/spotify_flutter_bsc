import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/LibrarySearch.dart';

class LibraryMusic extends StatefulWidget {
  const LibraryMusic({Key? key}) : super(key: key);

  @override
  _LibraryMusicState createState() => _LibraryMusicState();
}

class _LibraryMusicState extends State<LibraryMusic> {
  int selectedIndex = 0;
  int screenIndex = 0;
  List<String> playlist = [];

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["Çalma Listeleri", "Sanatçılar", "Albümler"];
    List<String> screens = ["Müzik", "Podcastler"];

    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          SizedBox(height: 36),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < screens.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          screenIndex = i;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(),
                        child: Text(
                          screens[i],
                          style: TextStyle(
                            color: screenIndex == i
                                ? Colors.white
                                : Colors.white.withOpacity(.60),
                            fontSize: 24,
                          ),
                        ),
                      ),
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
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 16),
              LibrarySearch(),
            ],
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              setState(() {
                playlist.add("Playlist");
              });
            },
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.white.withOpacity(.10),
                  alignment: Alignment.center,
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Yeni Çalma Listesi",
                      labelStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(.60)),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.10),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  color: Colors.white.withOpacity(.10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.playlist_play,
                        color: Colors.white.withOpacity(.60),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        playlist[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
