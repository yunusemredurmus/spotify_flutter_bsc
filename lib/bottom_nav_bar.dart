import 'package:flutter/material.dart';
import 'package:spotify_flutter_bsc/Library.dart';
import 'package:spotify_flutter_bsc/home_page.dart';
import 'package:spotify_flutter_bsc/search.dart';
import 'package:spotify_flutter_bsc/searchScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Ara",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Kitaplığın",
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_currentIndex == 0) {
      return HomeBody();
    } else if (_currentIndex == 1) {
      return SearchScreenMain();
    } else {
      return LibraryMusic();
    }
  }
}
